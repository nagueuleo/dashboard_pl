

with refree_data as (
    select
        referee,
        row_number() over (order by referee) as refree_key
    from `dev`.`silver`.`int_pl_data`
    group by referee
    order by referee asc
)

select * from refree_data