
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select refree_key
from `dev`.`gold`.`fact_pldata`
where refree_key is null



  
  
      
    ) dbt_internal_test