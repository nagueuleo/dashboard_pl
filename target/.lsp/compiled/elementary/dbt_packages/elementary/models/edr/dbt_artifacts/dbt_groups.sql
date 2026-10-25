

select * from (
            select
        cast(
            'dummy_string' as string
        ) as unique_id

,
        cast(
            'dummy_string' as string
        ) as name

,
        cast(
            'dummy_string' as string
        ) as owner_email

,
        cast(
            'dummy_string' as string
        ) as owner_name

,
        cast(
            'dummy_string' as string
        ) as generated_at

,
        cast(
            'dummy_string' as string
        ) as metadata_hash


        ) as empty_table
        where 1 = 0