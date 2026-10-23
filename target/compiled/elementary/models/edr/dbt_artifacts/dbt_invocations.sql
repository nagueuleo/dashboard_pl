

select * from (
            select
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as invocation_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as job_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as job_name

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as job_run_id

,
        cast(
            'dummy_string' as string
        ) as run_started_at

,
        cast(
            'dummy_string' as string
        ) as run_completed_at

,
        cast(
            'dummy_string' as string
        ) as generated_at

,cast(
            '2091-02-17' as timestamp
        ) as created_at

,
        cast(
            'dummy_string' as string
        ) as command

,
        cast(
            'dummy_string' as string
        ) as dbt_version

,
        cast(
            'dummy_string' as string
        ) as elementary_version

,
        cast(
            True as boolean
        ) as full_refresh

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as invocation_vars

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as vars

,
        cast(
            'dummy_string' as string
        ) as target_name

,
        cast(
            'dummy_string' as string
        ) as target_database

,
        cast(
            'dummy_string' as string
        ) as target_schema

,
        cast(
            'dummy_string' as string
        ) as target_profile_name

,
        cast(
            123456789 as integer
        ) as threads

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as selected

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as yaml_selector

,
        cast(
            'dummy_string' as string
        ) as project_id

,
        cast(
            'dummy_string' as string
        ) as project_name

,
        cast(
            'dummy_string' as string
        ) as env

,
        cast(
            'dummy_string' as string
        ) as env_id

,
        cast(
            'dummy_string' as string
        ) as cause_category

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as cause

,
        cast(
            'dummy_string' as string
        ) as pull_request_id

,
        cast(
            'dummy_string' as string
        ) as git_sha

,
        cast(
            'dummy_string' as string
        ) as orchestrator

,
        cast(
            'dummy_string' as string
        ) as dbt_user

,
        cast(
            'dummy_string' as string
        ) as job_url

,
        cast(
            'dummy_string' as string
        ) as job_run_url

,
        cast(
            'dummy_string' as string
        ) as account_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as target_adapter_specific_fields


        ) as empty_table
        where 1 = 0