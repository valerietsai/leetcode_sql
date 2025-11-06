/* Write your T-SQL query statement below */
select
    today.id
from Weather as today
    left join Weather as yesterday
        on today.recordDate = dateadd(day, 1, yesterday.recordDate)
where yesterday.temperature < today.temperature