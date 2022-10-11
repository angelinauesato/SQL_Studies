/*
 * In order to force the order of joins: STRAIGHT_JOIN
 * Link: https://dev.mysql.com/doc/refman/8.0/en/join.html
 * 
 * Exercise 5-1
 * Fill the blanks (denoted by <#>) for the following query to obtain the results that follow:
 * SELECT c.first_name, clast_name, a.address, ct.city
 * FROM customer c 
 * 	INNER JOIN address <1> ON c.address_id = a.address_id
 *	INNER JOIN city ct ON a.city_id = <2>
 *	WHERE a.district = 'California';
 *
 */
SELECT c.first_name, c.last_name, a.address, ct.city
 FROM customer c 
  	INNER JOIN address a ON c.address_id = a.address_id
 	INNER JOIN city ct ON a.city_id = ct.city_id
 WHERE a.district = 'California';
 
/*
 * Exercise 5-2:
 * Write a query that returns the title of every film in which an actor with the first name JOHN appeared
 * 
 */

SELECT f.title  
FROM film f 
INNER JOIN film_actor fa ON f.film_id  = fa.film_id 
INNER JOIN actor a ON fa.actor_id = a.actor_id 
WHERE UPPER(a.first_name) LIKE 'JOHN';

/*
 * Exercise 5-3
 * Construct a query that returns all address that are in the same city. You will need to join the address table to itself,
 * and each row should include two different address.
 *  
 */
SELECT a.address, a2.address FROM address a 
INNER JOIN address a2 ON a.city_id = a2.city_id  
WHERE a.address  <> a2.address 