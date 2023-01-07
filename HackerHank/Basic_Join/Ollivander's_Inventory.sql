/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. 
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. 
If more than one wand has same power, sort the result in order of descending age.
*/

/*
Enter your query here.
minimun galleons
(0) non-evil with high power and age

power desc
age desc
*/
SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w
INNER JOIN Wands_Property wp ON w.code = wp.code
WHERE is_evil = 0
and w.coins_needed = (SELECT MIN(w_min.coins_needed) 
                             FROM   Wands w_min 
                                    JOIN Wands_Property wp_min 
                                      ON w_min.code = wp_min.code 
                             WHERE  wp.age = wp_min.age 
                                    AND w.power = w_min.power) 
ORDER BY  w.power DESC, wp.age DESC;
