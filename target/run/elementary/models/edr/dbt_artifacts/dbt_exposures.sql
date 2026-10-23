
  
    
        create or replace table `dev`.`bronze`.`dbt_exposures`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
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
        ) as maturity

,
        cast(
            'dummy_string' as string
        ) as type

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
            'this_is_just_a_long_dummy_string'
            as string
        ) as url

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
        ) as depends_on_columns

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as description

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
        ) as generated_at

,
        cast(
            'dummy_string' as string
        ) as metadata_hash

,
        cast(
            'dummy_string' as string
        ) as label

,
        cast(
            'this_is_just_a_long_dummy_string'
            as string
        ) as raw_queries


        ) as empty_table
        where 1 = 0
  