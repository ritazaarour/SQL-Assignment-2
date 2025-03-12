/* List the names of carriers that operate flights from San Diego to 
San Francisco, CA. Return each carrier's name only once. Use a nested query to answer this question. */
SELECT C.name AS carrier 
FROM Carriers C 
JOIN Flights F ON C.cid = F.carrier_id 
WHERE C.cid IN (SELECT C2.cid FROM Carriers C2 JOIN Flights F ON C2.cid = F.carrier_id WHERE F.origin_city LIKE '%San Diego%' AND F.dest_city LIKE '%San Francisco%') 
GROUP BY carrier 
ORDER BY carrier;
