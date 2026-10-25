


    select * from (
            select
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as id

,
        cast(
            'dummy_string' as string
        ) as data_issue_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_execution_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_unique_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as model_unique_id

,
        cast(
            'dummy_string' as string
        ) as invocation_id

,cast(
            '2091-02-17' as timestamp
        ) as detected_at

,cast(
            '2091-02-17' as timestamp
        ) as created_at

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
            'dummy_string' as string
        ) as column_name

,
        cast(
            'dummy_string' as string
        ) as test_type

,
        cast(
            'dummy_string' as string
        ) as test_sub_type

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_results_description

,
        cast(
            'dummy_string' as string
        ) as owners

,
        cast(
            'dummy_string' as string
        ) as tags

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_results_query

,
        cast(
            'dummy_string' as string
        ) as other

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_name

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as test_params

,
        cast(
            'dummy_string' as string
        ) as severity

,
        cast(
            'dummy_string' as string
        ) as status

,
        cast(
            31474836478 as bigint
        ) as failures

,
        cast(
            'dummy_string' as string
        ) as test_short_name

,
        cast(
            'dummy_string' as string
        ) as test_alias

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as result_rows

,
        cast(
            31474836478 as bigint
        ) as failed_row_count


        ) as empty_table
        where 1 = 0
