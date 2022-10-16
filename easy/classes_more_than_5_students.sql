/* https://leetcode.com/problems/classes-more-than-5-students/ */
select class
from (
    select class, count(distinct student) as num
    from courses
    group by class
) as temp_table
where num >= 5;
