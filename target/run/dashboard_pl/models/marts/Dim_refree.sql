
  
    
        create or replace table `dev`.`gold`.`dim_refree`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with refree_data as ( 
    select distinct
        row_number() over(order by Referee) as refree_key,
        Referee
    from `dev`.`silver`.`int_pl_data`
    group by Referee
    order by Referee ASC
)
select * from refree_data
  