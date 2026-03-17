with YesterDay as (
    select 
        id
        , dateadd(day, -1, recordDate) as yesterDay
    from Weather
),
YesterDay_tmp as (
    select
        b.id
        , b.yesterDay
        , a.temperature
    from Weather as a
        left join YesterDay as b on a.recordDate=b.yesterDay
)

select a.id
from Weather as a
    left join YesterDay_tmp as b on a.id=b.id
where a.temperature > b.temperature