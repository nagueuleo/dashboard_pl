

with date_spine as (

    





with rawdata as (

    

    

    with p as (
        select 0 as generated_number union all select 1
    ), unioned as (

    select

    
    p0.generated_number * power(2, 0)
     + 
    
    p1.generated_number * power(2, 1)
     + 
    
    p2.generated_number * power(2, 2)
     + 
    
    p3.generated_number * power(2, 3)
     + 
    
    p4.generated_number * power(2, 4)
     + 
    
    p5.generated_number * power(2, 5)
     + 
    
    p6.generated_number * power(2, 6)
     + 
    
    p7.generated_number * power(2, 7)
     + 
    
    p8.generated_number * power(2, 8)
     + 
    
    p9.generated_number * power(2, 9)
    
    
    + 1
    as generated_number

    from

    
    p as p0
     cross join 
    
    p as p1
     cross join 
    
    p as p2
     cross join 
    
    p as p3
     cross join 
    
    p as p4
     cross join 
    
    p as p5
     cross join 
    
    p as p6
     cross join 
    
    p as p7
     cross join 
    
    p as p8
     cross join 
    
    p as p9
    
    

    )

    select *
    from unioned
    where generated_number <= 729
    order by generated_number



),

all_periods as (

    select (
        timestampadd(day, row_number() over (order by generated_number) - 1, '2025-01-01')
    ) as date_day
    from rawdata

),

filtered as (

    select *
    from all_periods
    where date_day <= '2026-12-31'

)

select * from filtered



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