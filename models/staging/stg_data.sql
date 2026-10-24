{{
    config(
        materialized='ephemeral'
    )
}}

WITH source_data AS (
    SELECT * FROM {{ source('league', 'pl_data') }}
),

renamed AS (
    SELECT
        league,
        season,
        team,
        game,
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
        opponent,
        captain,
        formation,
        opp_formation,
        referee,
        match_report,
        notes,
        coalesce(attendance, 73475) AS attendance
    FROM source_data
    WHERE formation IS NOT NULL
)

SELECT * FROM renamed
