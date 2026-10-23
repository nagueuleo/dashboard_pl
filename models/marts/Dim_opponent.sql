{{
    config (
        materialized='table'
    )
}}

with opponent_data as (
    select
        opponent,
        row_number() over (order by opponent) as opponent_key
    from {{ ref('int_pl_data') }}
    group by opponent
    order by opponent asc
)

select * from opponent_data
