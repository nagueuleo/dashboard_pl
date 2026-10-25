

WITH  __dbt__cte__stg_data as (


WITH source_data AS (
    SELECT * FROM `dev`.`bronze`.`pl_data`
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
), data_pl AS (
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
    FROM __dbt__cte__stg_data
)

SELECT * FROM data_pl