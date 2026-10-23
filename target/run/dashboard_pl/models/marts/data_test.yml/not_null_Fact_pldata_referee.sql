
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select referee
from `dev`.`gold`.`fact_pldata`
where referee is null



  
  
      
    ) dbt_internal_test