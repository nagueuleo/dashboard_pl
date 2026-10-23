{{
    config 
    (
        materialized='table'
    )
}}

with venue_data as (
    select
        venue,
        row_number() over (order by venue) as venue_key
    from {{ ref('int_pl_data') }}
    group by venue
    order by venue asc
)

select * from venue_data
