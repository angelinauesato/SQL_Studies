/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of 0 from your result.
*/

SELECT h.hacker_id, h.name, SUM(s.score_dist) AS total
FROM Hackers h
JOIN (
SELECT MAX(s.score) score_dist, s.challenge_id, s.hacker_id  
    FROM Submissions s
    GROUP BY s.challenge_id, s.hacker_id  
) AS s ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total > 0
ORDER BY total DESC, h.hacker_id;