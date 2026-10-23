

WITH source_data AS (
    SELECT * from `dev`.`bronze`.`pl_data`
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
       GF,
       GA,
       xG,
       xGA,
       Poss,
       coalesce(attendance, 73475) AS attendance,
       opponent,
       Captain,
       Formation,
       Opp_Formation,
       Referee,
       match_report,
       notes
     FROM source_data
     where Formation IS NOT NULL
 )
SELECT * FROM renamed