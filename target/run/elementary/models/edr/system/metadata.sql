
  
    
        create or replace table `dev`.`bronze`.`metadata`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select '0.26.1' as dbt_pkg_version
  