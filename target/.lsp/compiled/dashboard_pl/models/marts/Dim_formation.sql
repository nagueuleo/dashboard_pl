

with formation_data as (
    select
        formation,
        opp_formation,
        row_number() over (order by formation) as formation_key
    from `dev`.`silver`.`int_pl_data`
    group by formation, opp_formation
    order by formation asc
)

select * from formation_data