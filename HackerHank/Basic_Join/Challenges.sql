/*
Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. 
If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, 
then exclude those students from the result.
*/
SELECT h.hacker_id, h.name, COUNT(c.challenge_id)
FROM Hackers h
INNER JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) = 
    (SELECT COUNT(c_equal.challenge_id) FROM Challenges AS c_equal GROUP BY c_equal.hacker_id ORDER BY COUNT(*) DESC LIMIT 1) 
    
    OR
COUNT(c.challenge_id) NOT IN 
    (SELECT COUNT(c_excl.challenge_id) FROM Challenges AS c_excl GROUP BY c_excl.hacker_id HAVING c_excl.hacker_id <> h.hacker_id)
ORDER BY COUNT(c.challenge_id) DESC, h.hacker_id;