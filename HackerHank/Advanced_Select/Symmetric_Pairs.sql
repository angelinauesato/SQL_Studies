/*
You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.


*/

SELECT DISTINCT points_1.x, points_1.y 
FROM 
  (SELECT x, y, ROW_NUMBER() OVER(PARTITION BY x) AS row_num  FROM Functions) points_1, 
  (SELECT x, y, ROW_NUMBER() OVER(PARTITION BY x) AS row_num  FROM Functions) points_2
WHERE points_1.y=points_2.x AND points_2.y=points_1.x AND points_1.row_num <> points_2.row_num 
ORDER BY points_1.x;