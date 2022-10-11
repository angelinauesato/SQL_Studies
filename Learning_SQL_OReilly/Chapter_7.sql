/*
 * Exercise 7-1:
 * Write a query that returns the 17th though 25th characters of the string 
 * 'Please find the substring in this string'
 * 
 */

SELECT SUBSTR('Please find the substring in this string', 17,9); 

/*
 * 
 * Exercise 7-2:
 * Write a query that returns the absolute value and sign(-1,0 or 1) of the number -25.76823.
 * Also return the number rounded to the nearest hundredth.
 * 
 */
SELECT ABS(-25.76823), SIGN(-25.76823),ROUND(-25.76823,2);

/*
 * 
 * Exercise 7-3:
 * Write a query to return just the month portion of the current date.
 */
SELECT MONTH(now()), MONTHNAME(now());
