
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select xga
from `dev`.`gold`.`fact_pldata`
where xga is null



  
  
      
    ) dbt_internal_test