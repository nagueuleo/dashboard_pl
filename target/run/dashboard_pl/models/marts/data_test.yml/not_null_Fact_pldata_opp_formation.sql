
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select opp_formation
from `dev`.`gold`.`fact_pldata`
where opp_formation is null



  
  
      
    ) dbt_internal_test