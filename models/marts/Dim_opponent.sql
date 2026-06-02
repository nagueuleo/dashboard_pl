{{
    config (
        materialized='table'
    )
}}

with opponent_data as ( 
    select distinct
        row_number() over(order by opponent) as opponent_key,
        opponent
    from {{ ref('int_pl_data') }}
    group by opponent
    order by opponent ASC
)
select * from opponent_data