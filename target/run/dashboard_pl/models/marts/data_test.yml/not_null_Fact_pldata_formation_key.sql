
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select formation_key
from `dev`.`gold`.`fact_pldata`
where formation_key is null



  
  
      
    ) dbt_internal_test