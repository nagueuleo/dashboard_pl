{{
    config 
    (
        materialized='table'
    )
}}

with venue_data as ( 
    select distinct
        row_number() over(order by venue) as venue_key,
        venue
    from {{ ref('int_pl_data') }}
    group by venue
    order by venue ASC
)
select * from venue_data