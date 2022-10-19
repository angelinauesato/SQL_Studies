/*
    We define an employee's total earnings to be their monthly  salaryxmonths worked, 
    and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
    Write a query to find the maximum total earnings for all employees as well as the total number of employees 
    who have maximum total earnings. Then print these values as 2 space-separated integers.
*/

SELECT CONCAT((SELECT (s.salary * s.months) earnings
                                FROM EMPLOYEE s
                                order by earnings desc
                                Limit 1), ' ', (SELECT COUNT(e.employee_id)
FROM EMPLOYEE e
WHERE (e.salary * e.months) = (SELECT (s.salary * s.months) earnings
                                FROM EMPLOYEE s
                                order by earnings desc
                                Limit 1)
GROUP BY (e.salary * e.months)));
