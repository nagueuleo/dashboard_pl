with stats_data as (
    select
        l.league,
        l.season,
        t.team,
        l.opponent,
        l.game,
        l.date,
        l.time,
        l.round,
        l.day,
        l.venue,
        l.result,
        l.gf,
        l.ga,
        l.xg,
        l.xga,
        l.poss,
        l.attendance,
        l.captain,
        l.formation,
        l.opp_formation,
        l.referee,
        l.match_report,
        f.formation_key,
        r.refree_key,
        t.team_key,
        v.venue_key,
        o.opponent_key,
        d.date_key,
        row_number() over (
            order by l.date, l.team, l.opponent
        ) as stats_key

    from {{ ref('int_pl_data') }} as l

    left join {{ ref('Dim_formation') }} as f
        on l.formation = f.formation

    left join {{ ref('Dim_refree') }} as r
        on l.referee = r.referee

    left join {{ ref('Dim_team') }} as t
        on l.team = t.team

    left join {{ ref('Dim_venue') }} as v
        on l.venue = v.venue

    left join {{ ref('Dim_opponent') }} as o
        on l.opponent = o.opponent

    left join {{ ref('Dim_date') }} as d
        on l.date = d.full_date
)

select *
from stats_data
