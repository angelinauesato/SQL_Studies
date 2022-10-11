/*
 * Generating Rollups
 *  
 */

SELECT COUNT(*) FROM actor a;

SELECT fa.actor_id , f.rating, COUNT(*) 
FROM film_actor fa 
	INNER JOIN film f ON fa.film_id  = f.film_id 
GROUP  BY fa.actor_id , f.rating  WITH ROLLUP; 


/*
 * Group Filter Conditions
 * 
 */
SELECT fa.actor_id , f.rating, COUNT(*) 
FROM film_actor fa 
	INNER JOIN film f ON fa.film_id  = f.film_id 
WHERE f.rating IN('G', 'PG')
GROUP  BY fa.actor_id , f.rating  
HAVING COUNT(*) > 9; 

/*
 *	Exercise 8-1:
 *	Contruct a query that counts the number of rows in the payment table.
 * 
 */
SELECT COUNT(*) AS Qt_payments 
FROM payment p;

/*
 *	Exercise 8-2:
 *	Modify the query from Exercise 8-1 to count the number of payments made by each customer. 
 *	Show the customer ID and the total amount paid for each customer.
 * 
 */
SELECT p.customer_id , COUNT(*) AS Qt_payments, SUM(p.amount) AS TOTAL_PAID  
FROM payment p
GROUP BY p.customer_id;

/*
 *	Exercise 8-3:
 *	Modify your query from Exercise 8-2 to include only those customers who have made at least 40 payments.
 * 
 */
SELECT p.customer_id , COUNT(*) AS Qt_payments, SUM(p.amount) AS TOTAL_PAID  
FROM payment p
GROUP BY p.customer_id
HAVING COUNT(*) >=40;
