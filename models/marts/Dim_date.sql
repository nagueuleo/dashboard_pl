{{ config(materialized='table') }}

WITH date_spine AS (

    {{
        dbt_utils.date_spine(
            datepart="day",
            start_date="'2025-01-01'",
            end_date="'2026-12-31'"
        )
    }}

)

SELECT
    CAST(DATE_FORMAT(date_day, 'yyyyMMdd') AS INT) AS date_key,
    date_day AS full_date,
    YEAR(date_day) AS year_number,
    MONTH(date_day) AS month_number,
    DAY(date_day) AS day_number,
    DATE_FORMAT(date_day, 'MMM') AS month_name,
    DATE_FORMAT(date_day, 'E') AS day_name
FROM date_spine
