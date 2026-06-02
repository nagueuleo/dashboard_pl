{{
    config
    (
        materialized='table'
    )
}}

with refree_data as ( 
    select distinct
        row_number() over(order by Referee) as refree_key,
        Referee
    from {{ ref('int_pl_data') }}
    group by Referee
    order by Referee ASC
)
select * from refree_data