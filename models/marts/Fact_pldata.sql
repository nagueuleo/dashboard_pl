{{
        config(
            materialized='table'
        )
}}

with stats_data as (
    select
        row_number() over(order by id) as stats_key,
        l.league,
        l.season,
        t.team,
        game,
        date,
        time,
        round,
        day,
        venue,
        result,
        GF,
        GA,
        xG,
        xGA,
        Poss,
        attendance,
        Captain,
        Formation,
        Opp_Formation,
        Referee,
        match_report,
        fromation_key,
        refree_key,
        team_key,
        venue_key,
        opponent_key
    from {{ ref('int_pl_data') }}
)
