/* Write your T-SQL query statement below */
with email_list as(
    select 
        *
        , row_number() over(partition by email
                            order by id, email)
            as email_num
    from Person
)

delete
from email_list
where email_num <> 1