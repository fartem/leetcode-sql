/* https://leetcode.com/problems/sales-person/ */
select s.name
from Salesperson s
where s.sales_id not in (
    select o.sales_id
    from Orders o
    left join company c on o.com_id = c.com_id
    where c.name = 'RED'
);
