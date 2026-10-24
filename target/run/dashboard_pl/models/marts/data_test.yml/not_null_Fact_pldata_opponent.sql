
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select opponent
from `dev`.`gold`.`fact_pldata`
where opponent is null



  
  
      
    ) dbt_internal_test