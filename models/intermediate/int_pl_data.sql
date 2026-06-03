{{
        config(
            materialized='view'
        )
}}

WITH data_pl AS (
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
    from {{ ref('stg_data') }}
)
select * from data_pl