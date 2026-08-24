with consec_seat as (
    select *,
        lag(free, 1) over (order by seat_id asc) as pre_seat,
        lead(free, 1) over (order by seat_id asc) as next_seat
    from Cinema
)

select seat_id
from consec_seat
where free=1 and (pre_seat=1 or next_seat=1)
order by seat_id asc