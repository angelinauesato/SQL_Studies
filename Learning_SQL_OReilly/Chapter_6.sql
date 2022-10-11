/*
 * The following exercise are designed to test your understanding of set operations.
 * 	Exercise 6-1:
 * 	If set A={L M N O P} and B={P Q R S T}, what sets are genarated by the following operations?
 * 
 *	A union B = {L M N O P Q R S T}
 *	A union all B = {L M N O P P Q R S T}
 *	A intersect B = {P}
 *	A except B = {L M N O}
 *
 *	Exercise 6-2:
 *	Write a compound query that finds the first and last names of all actors and customers whose last name starts with L.
 *	
 */

SELECT a.first_name AS FIRST_NAME, a.last_name AS LAST_NAME, 'ACTOR' AS SOURCE
FROM actor a
WHERE a.last_name LIKE 'L%'
UNION 
SELECT c.first_name AS FIRST_NAME, c.last_name AS LAST_NAME, 'CUSTOMER' AS SOUCE
FROM customer c
WHERE c.last_name LIKE 'L%'; 

/*
 * Exercise 6-3:
 * Sort the results from exercise 6-2 by the last column
 * 
 */
SELECT  A_C_union.FIRST_NAME, A_C_union.LAST_NAME, A_C_union.SOURCE
FROM
(	SELECT a.first_name AS FIRST_NAME, a.last_name AS LAST_NAME, 'ACTOR' AS SOURCE
	FROM actor a
	WHERE a.last_name LIKE 'L%'
	UNION 
	SELECT c.first_name AS FIRST_NAME, c.last_name AS LAST_NAME, 'CUSTOMER' AS SOUCE
	FROM customer c
	WHERE c.last_name LIKE 'L%') A_C_union
ORDER BY A_C_union.LAST_NAME;

