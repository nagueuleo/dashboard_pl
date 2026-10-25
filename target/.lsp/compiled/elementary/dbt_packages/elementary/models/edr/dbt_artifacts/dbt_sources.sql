

select * from (
            select
        cast(
            'dummy_string' as string
        ) as unique_id

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
        ) as source_name

,
        cast(
            'dummy_string' as string
        ) as name

,
        cast(
            'dummy_string' as string
        ) as identifier

,
        cast(
            'dummy_string' as string
        ) as loaded_at_field

,
        cast(
            'dummy_string' as string
        ) as freshness_warn_after

,
        cast(
            'dummy_string' as string
        ) as freshness_error_after

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as freshness_filter

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as freshness_description

,
        cast(
            'dummy_string' as string
        ) as relation_name

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
            'this_is_just_a_long_dummy_string'
            as string
        ) as source_description

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as description

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