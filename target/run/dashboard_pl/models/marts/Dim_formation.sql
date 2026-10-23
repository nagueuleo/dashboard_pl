
  
    
        create or replace table `dev`.`gold`.`dim_formation`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with formation_data as ( 
    select distinct
        row_number() over(order by Formation) as formation_key,
        Formation,
        Opp_Formation
    from `dev`.`silver`.`int_pl_data`
    group by Formation, Opp_Formation
    order by Formation ASC
)
select * from formation_data
  