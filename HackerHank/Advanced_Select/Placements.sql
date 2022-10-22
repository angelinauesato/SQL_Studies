/*
    You are given three tables: Students, Friends and Packages.
    Students contains two columns: ID and Name.
    Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
    Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

    Write a query to output the names of those students whose best friends got offered a higher salary than them.
    Names must be ordered by the salary amount offered to the best friends.
    It is guaranteed that no two students got same salary offer.
*/


SELECT s.name FROM Students s
INNER JOIN Friends f ON s.id = f.id
INNER JOIN Packages p ON s.id = p.id
INNER JOIN Students sf ON sf.id = f.Friend_ID
INNER JOIN Packages pf ON pf.id = f.Friend_ID
WHERE pf.salary > p.salary
ORDER BY pf.salary