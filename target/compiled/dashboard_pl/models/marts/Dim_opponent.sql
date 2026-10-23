

with opponent_data as ( 
    select distinct
        row_number() over(order by opponent) as opponent_key,
        opponent
    from `dev`.`silver`.`int_pl_data`
    group by opponent
    order by opponent ASC
)
select * from opponent_data