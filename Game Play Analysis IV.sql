-- Problem: Game Play Analysis IV
-- Link: https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50

 select 
   round(sum(case when datediff(a.event_date, a2.first_log_in) = 1 then 1 else 0 end) * 1.0 / count(distinct a2.player_id),2) as fraction
    from (
      select
        player_id,
        min(event_date) as first_log_in
    from activity 
      group by player_id
     ) as a2
join activity a
    on a2.player_id = a.player_id 
