
/*
 *	Exercise 3-1: 
 * 	Retrieve the actor ID, first name, and last name for all actors. Sort by last name and then by first name.
 * 
 */
SELECT 
	actor_id , first_name , last_name 
FROM actor 
ORDER BY last_name, first_name;

/*
 * 	Exercise 3-2:
 * 	Retrieve the actor ID, first name, and last name for all actors whose last name equals 'WILLIAMS' or 'DAVIS'.
 * 
 * */
SELECT 
	actor_id, first_name, last_name
FROM actor
WHERE UPPER(last_name) = 'WILLIAMS' or UPPER(last_name) = 'DAVIS'
ORDER BY last_name, first_name;

/*
 * 	Exercise 3-3:
 * 	Write a query against the rental table that returns the IDs of the customers who rented a film on July 5, 2005
 * 	(Use the rental.rental_date column, and you can use the date() function to ignore the time component). 
 * 	Include a single row for each distinct customer ID.
 * 
 * */
SELECT DISTINCT r.customer_id, r.rental_date 
FROM rental r 
WHERE date(r.rental_date) = '2005-07-05'
ORDER BY r.rental_date; 

/*
 * 
 * 	Exercise 3-4
 * 	Fill the blanks (denoted by <#>) for this multitable query to achieve the following results:
 * 	SELECT c.email, r.return_date
	FROM customer c 
		INNER JOIN rental <1>
		ON c.customer_id = <2>
	WHERE date(r.rental_date) = '2005-06-14'
	ORDER BY <3> <4>;
	
 */
SELECT c.email, r.return_date
FROM customer c 
	INNER JOIN rental r 
	ON c.customer_id = r.customer_id 
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY r.return_date DESC;

