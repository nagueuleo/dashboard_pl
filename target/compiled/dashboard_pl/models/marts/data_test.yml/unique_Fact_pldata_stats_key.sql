
    
    

select
    stats_key as unique_field,
    count(*) as n_records

from `dev`.`gold`.`fact_pldata`
where stats_key is not null
group by stats_key
having count(*) > 1


