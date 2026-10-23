
  
    
        create or replace table `dev`.`gold`.`fact_pldata`
      
        
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      
    select stats_key, league, season, team, opponent, game, date, time, round, day, venue, result, GF, GA, xG, xGA, Poss, attendance, Captain, Formation, Opp_Formation, Referee, match_report, formation_key, refree_key, venue_key, team_key, opponent_key, date_key
    from (
        with stats_data as (
    select
        row_number() over(
            order by l.date, l.team, l.opponent
        ) as stats_key,
        l.league,
        l.season,
        t.team,
        l.opponent,
        l.game,
        l.date,
        l.time,
        l.round,
        l.day,
        l.venue,
        l.result,
        l.GF,
        l.GA,
        l.xG,
        l.xGA,
        l.Poss,
        l.attendance,
        l.Captain,
        l.Formation,
        l.Opp_Formation,
        l.Referee,
        l.match_report,
        f.formation_key,
        r.refree_key,
        t.team_key,
        v.venue_key,
        o.opponent_key,
        d.date_key

    from `dev`.`silver`.`int_pl_data` l

    left join `dev`.`gold`.`dim_formation` f
        on l.Formation = f.Formation

    left join `dev`.`gold`.`dim_refree` r
        on l.Referee = r.Referee

    left join `dev`.`gold`.`dim_team` t
        on l.team = t.team

    left join `dev`.`gold`.`dim_venue` v
        on l.venue = v.venue

    left join `dev`.`gold`.`dim_opponent` o
        on l.opponent = o.opponent

    left join `dev`.`gold`.`dim_date` d
        on l.date = d.full_date
)

select *
from stats_data
    ) as model_subq
  