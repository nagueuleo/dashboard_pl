

with team_data as (
    select
        team,
        row_number() over (order by team) as team_key
    from `dev`.`silver`.`int_pl_data`
    group by team
    order by team asc
)

select * from team_data