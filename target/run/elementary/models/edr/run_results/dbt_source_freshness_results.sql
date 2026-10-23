
  
    
        create or replace table `dev`.`bronze`.`dbt_source_freshness_results`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select * from (
            select
        cast(
            'dummy_string' as string
        ) as source_freshness_execution_id

,
        cast(
            'dummy_string' as string
        ) as unique_id

,
        cast(
            'dummy_string' as string
        ) as max_loaded_at

,
        cast(
            'dummy_string' as string
        ) as snapshotted_at

,
        cast(
            'dummy_string' as string
        ) as generated_at

,cast(
            '2091-02-17' as timestamp
        ) as created_at

,
        cast(
            123456789.99 as float
        ) as max_loaded_at_time_ago_in_s

,
        cast(
            'dummy_string' as string
        ) as status

,
        cast(
            'dummy_string' as string
        ) as error

,
        cast(
            'dummy_string' as string
        ) as compile_started_at

,
        cast(
            'dummy_string' as string
        ) as compile_completed_at

,
        cast(
            'dummy_string' as string
        ) as execute_started_at

,
        cast(
            'dummy_string' as string
        ) as execute_completed_at

,
        cast(
            'dummy_string' as string
        ) as invocation_id

,
        cast(
            'dummy_string' as string
        ) as warn_after

,
        cast(
            'dummy_string' as string
        ) as error_after

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as filter


        ) as empty_table
        where 1 = 0
  