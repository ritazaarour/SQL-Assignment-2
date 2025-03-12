/* Express the same query as question 5, but do so without using a nested query.
Again, name the output column carrier and order ascending. */
SELECT C.name AS carrier 
FROM Carriers C 
JOIN Flights F ON C.cid = F.carrier_id 
WHERE F.origin_city LIKE ‘%San Diego%’ AND F.dest_city LIKE ‘%San Francisco%’ 
GROUP BY carrier 
ORDER BY carrier; 
