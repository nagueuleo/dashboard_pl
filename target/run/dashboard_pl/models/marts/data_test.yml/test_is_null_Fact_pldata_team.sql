
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    SELECT *
    FROM `dev`.`gold`.`fact_pldata`
    WHERE team IS NULL

  
  
      
    ) dbt_internal_test