
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select round
from `dev`.`gold`.`fact_pldata`
where round is null



  
  
      
    ) dbt_internal_test