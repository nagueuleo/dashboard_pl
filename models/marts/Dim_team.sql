{{
    config 
    (
        materialized='table'
    )
}}

with team_data as ( 
    select distinct
        row_number() over(order by team) as team_key,
        team
    from {{ ref('int_pl_data') }}
    group by team
    order by team ASC
)
select * from team_data