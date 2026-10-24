
  
    
        create or replace table `dev`.`gold`.`dim_team`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with team_data as ( 
    select distinct
        row_number() over(order by team) as team_key,
        team
    from `dev`.`silver`.`int_pl_data`
    group by team
    order by team ASC
)
select * from team_data
  