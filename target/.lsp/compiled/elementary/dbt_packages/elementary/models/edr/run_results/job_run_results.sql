





with
    jobs as (
        select
            job_name,
            job_id,
            job_run_id,
            
min(cast(run_started_at as timestamp))
 as job_run_started_at,
            
max(cast(run_completed_at as timestamp))
 as job_run_completed_at,
            
    case
            when 
min(cast(run_started_at as timestamp))
 < 
max(cast(run_completed_at as timestamp))

            then
                floor(
                    (
                        
                        

    coalesce(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

), nvl2(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

), assert_true(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

) is not null), null))


                        - 

    coalesce(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

), nvl2(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

), assert_true(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

) is not null), null))


                    )
                    / 1
                )
            else
                ceil(
                    (
                        

    coalesce(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

), nvl2(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

), assert_true(to_unix_timestamp(

    coalesce(to_timestamp(
max(cast(run_completed_at as timestamp))
), nvl2(to_timestamp(
max(cast(run_completed_at as timestamp))
), assert_true(to_timestamp(
max(cast(run_completed_at as timestamp))
) is not null), null))

) is not null), null))


                        - 

    coalesce(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

), nvl2(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

), assert_true(to_unix_timestamp(

    coalesce(to_timestamp(
min(cast(run_started_at as timestamp))
), nvl2(to_timestamp(
min(cast(run_started_at as timestamp))
), assert_true(to_timestamp(
min(cast(run_started_at as timestamp))
) is not null), null))

) is not null), null))


                    )
                    / 1
                )
        end

        

        
 as job_run_execution_time
        from `dev`.`bronze`.`dbt_invocations`
        where job_id is not null
        group by job_name, job_id, job_run_id
    )

select
    job_name as name,
    job_id as id,
    job_run_id as run_id,
    job_run_started_at as run_started_at,
    job_run_completed_at as run_completed_at,
    job_run_execution_time as run_execution_time
from jobs