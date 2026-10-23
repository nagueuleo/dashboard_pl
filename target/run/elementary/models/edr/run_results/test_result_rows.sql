
  
    
        create or replace table `dev`.`bronze`.`test_result_rows`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      -- depends_on: `dev`.`bronze`.`elementary_test_results`
select * from (
            select
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as elementary_test_results_id

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as result_row

,cast(
            '2091-02-17' as timestamp
        ) as detected_at

,cast(
            '2091-02-17' as timestamp
        ) as created_at

,
        cast(
            123456789 as integer
        ) as row_index

,
        cast(
            'dummy_string' as string
        ) as test_type


        ) as empty_table
        where 1 = 0
  