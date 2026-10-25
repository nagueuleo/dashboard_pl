

select * from (
            select
        cast(
            'dummy_string' as string
        ) as unique_id

,
        cast(
            'dummy_string' as string
        ) as alias

,
        cast(
            'dummy_string' as string
        ) as checksum

,
        cast(
            'dummy_string' as string
        ) as materialization

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
        ) as owner

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
            'this_is_just_a_long_dummy_string'
            as string
        ) as depends_on_macros

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as depends_on_nodes

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as description

,
        cast(
            'dummy_string' as string
        ) as name

,
        cast(
            'dummy_string' as string
        ) as package_name

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as original_path

,
        cast(
            'dummy_string' as string
        ) as path

,
        cast(
            'dummy_string' as string
        ) as patch_path

,
        cast(
            'dummy_string' as string
        ) as generated_at

,
        cast(
            'dummy_string' as string
        ) as metadata_hash

,
        cast(
            'dummy_string' as string
        ) as unique_key

,
        cast(
            'dummy_string' as string
        ) as incremental_strategy

,
        cast(
            'dummy_string' as string
        ) as group_name

,
        cast(
            'dummy_string' as string
        ) as access


        ) as empty_table
        where 1 = 0