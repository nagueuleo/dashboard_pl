{{ config(materialized='table') }}

with date_spine as (

    {{
        dbt_utils.date_spine(
            datepart="day",
            start_date="'2025-01-01'",
            end_date="'2026-12-31'"
        )
    }}

)

select

    cast(date_format(date_day, 'yyyyMMdd') as int) as date_key,
    date_day as full_date,
    year(date_day) as year,
    month(date_day) as month,
    day(date_day) as day,

    date_format(date_day, 'MMM') as month_name,
    date_format(date_day, 'E') as day_name

from date_spine