/* https://leetcode.com/problems/find-total-time-spent-by-each-employee/ */
select event_day as day, emp_id,
sum(out_time) - sum(in_time) as total_time
from Employees
group by emp_id, day;
