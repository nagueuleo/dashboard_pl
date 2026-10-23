
  
  
  
  create or replace view `dev`.`silver`.`int_pl_data`
  
  as (
    WITH  __dbt__cte__stg_data as (


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
), data_pl AS (
    select 
       league,
       season,
       team,
       opponent,
       split_part(game, ' ', 2) as game,
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
       attendance,
       Captain,
       Formation,
       Opp_Formation,
       Referee,
       match_report
    from __dbt__cte__stg_data
)
select * from data_pl
  )
