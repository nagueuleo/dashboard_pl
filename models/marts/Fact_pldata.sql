WITH stats_data AS (
    SELECT
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
        ROW_NUMBER() OVER (
            ORDER BY
                l.date,
                l.team,
                l.opponent
        ) AS stats_key
    FROM {{ ref('int_pl_data') }} AS l
    LEFT JOIN {{ ref('Dim_formation') }} AS f
        ON l.formation = f.formation
    LEFT JOIN {{ ref('Dim_refree') }} AS r
        ON l.referee = r.referee
    LEFT JOIN {{ ref('Dim_team') }} AS t
        ON l.team = t.team
    LEFT JOIN {{ ref('Dim_venue') }} AS v
        ON l.venue = v.venue
    LEFT JOIN {{ ref('Dim_opponent') }} AS o
        ON l.opponent = o.opponent
    LEFT JOIN {{ ref('Dim_date') }} AS d
        ON l.date = d.full_date
)

SELECT *
FROM stats_data
