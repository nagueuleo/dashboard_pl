
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  --- test si une valeur null est présente dans le modèle si c'est le cas on des éléments aprè le test

SELECT *
FROM `dev`.`gold`.`fact_pldata`
WHERE team IS NULL
  
  
      
    ) dbt_internal_test