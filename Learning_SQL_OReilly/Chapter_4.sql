/*
 * Creating a view with partial data from payment table.
 * As showed on the book a subset of payment data 
 */

CREATE VIEW view_payments AS
SELECT p.payment_id, p.customer_id, p.amount, p.payment_date 
FROM payment p  
WHERE p.payment_id BETWEEN 101 AND 120;

/*
 *	Exercise 4-1: 
 * 	Which of the payments IDs would be returned by following returned by the following filter conditions?
 * 	customer_id <> 5 AND (amount > 8 OR date(payment_date) = '2005-08-23')
 * 
 */

SELECT DISTINCT p.payment_id
FROM view_payments p 
WHERE  p.customer_id <> 5 AND (p.amount > 8 OR date(p.payment_date) = '2005-08-23');

/*
 *	Exercise 4-2: 
 * 	Which of the payments IDs would be returned by following returned by the following filter conditions?
 * 	customer_id = 5 AND NOT ( amount > 6 OR date(payment_date) = '2005-06-19')
 * 
 */
SELECT DISTINCT p.payment_id 
FROM view_payments p 
WHERE  p.customer_id = 5 AND NOT ( p.amount > 6 OR date(p.payment_date) = '2005-06-19');

/*
 *	Exercise 4-3: 
 * 	Construct a query that retrieves all rows from payment table where the amount is either 1.98, 7.98 or 9.98
 * 
 */
SELECT * 
FROM payment p 
WHERE p.amount IN (1.98, 7.98, 9.98)
ORDER BY p.amount;

/*
 *	Exercise 4-4: 
 * 	Construct a query that finds all customers whose last name contains an A in the second position 
 * 	and a W anywhere after A.
 * 
 */
SELECT c.last_name 
FROM customer c 
WHERE UPPER(c.last_name) LIKE '_A%W%'
ORDER BY c.last_name;

