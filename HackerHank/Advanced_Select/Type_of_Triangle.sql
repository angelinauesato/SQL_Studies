/*
    Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

    Equilateral: It's a triangle with 3sides of equal length.
    Isosceles: It's a triangle with 2 sides of equal length.
    Scalene: It's a triangle with 3 sides of differing lengths.
    Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

/*
    Triangle Inequality Theorem:
    the sum of any two sides of a triangle is greater than or equal to the third side.
 
 */
select 
    CASE when
        a + b <= c or a + c <= b or b + c <= a THEN 'Not A Triangle'
    WHEN  
        a = b and b = c then 'Equilateral' -- 3 sides  equal length
    WHEN  
        (a = b and b <> c) or (a = c and c <> b) or (b = c and c <> a) then 'Isosceles' -- 2 sides equal
    ELSE 'Scalene' -- 3 sides different
    END 
    FROM TRIANGLES t 