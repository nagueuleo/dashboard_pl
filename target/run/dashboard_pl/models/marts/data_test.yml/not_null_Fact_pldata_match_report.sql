
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select match_report
from `dev`.`gold`.`fact_pldata`
where match_report is null



  
  
      
    ) dbt_internal_test