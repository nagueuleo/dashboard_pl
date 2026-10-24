
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select stats_key
from `dev`.`gold`.`fact_pldata`
where stats_key is null



  
  
      
    ) dbt_internal_test