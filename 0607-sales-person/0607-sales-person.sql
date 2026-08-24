with RED_list as (
    select a.name
    from SalesPerson as a
        left join Orders as b on a.sales_id=b.sales_id
        left join Company as c on b.com_id=c.com_id
    where c.name='RED'
)

select a.name
from SalesPerson as a
    left join RED_list as b on a.name=b.name
where b.name is null