select a.player_id, a.device_id
from Activity as a
    left join (
        select player_id, min(event_date) as first_login
        from Activity
        group by player_id
    ) as b on a.player_id=b.player_id 
        and a.event_date=b.first_login
where b.player_id is not null