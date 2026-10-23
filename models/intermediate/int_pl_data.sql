{{
        config(
            materialized='view'
        )
}}

WITH data_pl AS (
    SELECT
        league,
        season,
        team,
        opponent,
        date,
        time,
        round,
        day,
        venue,
        result,
        gf,
        ga,
        xg,
        xga,
        poss,
        attendance,
        captain,
        formation,
        opp_formation,
        referee,
        match_report,
        split_part(game, ' ', 2) AS game
    FROM {{ ref('stg_data') }}
)

SELECT * FROM data_pl
