
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select attendance
from `dev`.`gold`.`fact_pldata`
where attendance is null



  
  
      
    ) dbt_internal_test