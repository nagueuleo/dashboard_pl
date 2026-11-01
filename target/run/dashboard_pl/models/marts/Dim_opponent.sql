
  
    
        create or replace table `dev`.`gold`.`dim_opponent`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with opponent_data as (
    select
        opponent,
        row_number() over (order by opponent) as opponent_key
    from `dev`.`silver`.`int_pl_data`
    group by opponent
    order by opponent asc
)

select * from opponent_data
  