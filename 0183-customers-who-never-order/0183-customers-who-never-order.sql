/* Write your T-SQL query statement below */
select a.name as Customers
from Customers as a
    left join Orders as b
        on a.id = b.customerId
where b.id is null