with stats_data as (
    select
        row_number() over(
            order by l.date, l.team, l.opponent
        ) as stats_key,
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
        l.GF,
        l.GA,
        l.xG,
        l.xGA,
        l.Poss,
        l.attendance,
        l.Captain,
        l.Formation,
        l.Opp_Formation,
        l.Referee,
        l.match_report,
        f.formation_key,
        r.refree_key,
        t.team_key,
        v.venue_key,
        o.opponent_key,
        d.date_key

    from {{ ref('int_pl_data') }} l

    left join {{ ref('Dim_formation') }} f
        on l.Formation = f.Formation

    left join {{ ref('Dim_refree') }} r
        on l.Referee = r.Referee

    left join {{ ref('Dim_team') }} t
        on l.team = t.team

    left join {{ ref('Dim_venue') }} v
        on l.venue = v.venue

    left join {{ ref('Dim_opponent') }} o
        on l.opponent = o.opponent

    left join {{ ref('Dim_date') }} d
        on l.date = d.full_date
)

select *
from stats_data