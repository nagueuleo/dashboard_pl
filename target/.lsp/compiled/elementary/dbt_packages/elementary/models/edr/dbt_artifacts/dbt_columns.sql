

select * from (
            select
        cast(
            'dummy_string' as string
        ) as unique_id

,
        cast(
            'dummy_string' as string
        ) as parent_unique_id

,
        cast(
            'dummy_string' as string
        ) as name

,
        cast(
            'dummy_string' as string
        ) as data_type

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as tags

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as meta

,
        cast(
            'dummy_string' as string
        ) as database_name

,
        cast(
            'dummy_string' as string
        ) as schema_name

,
        cast(
            'dummy_string' as string
        ) as table_name

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as description

,
        cast(
            'dummy_string' as string
        ) as resource_type

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