-- Noncorrelated Subqueries

SELECT  c.city_id, c.city 
FROM city c  
WHERE country_id  <> (
	SELECT c2.country_id 
	FROM country c2  
	WHERE UPPER(c2.country) = 'INDIA');
	
-- Correlated Subqery
SELECT c.first_name, c.last_name 
FROM customer c 
WHERE (
	SELECT SUM(p.amount)
	FROM payment p 
	WHERE p.customer_id = c.customer_id
) BETWEEN  180 AND 240;

