
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ga
from `dev`.`gold`.`fact_pldata`
where ga is null



  
  
      
    ) dbt_internal_test