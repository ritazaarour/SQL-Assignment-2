SELECT C.name AS carrier 
FROM Carriers C 
JOIN Flights F ON C.cid = F.carrier_id 
WHERE F.origin_city LIKE ‘%San Diego%’ AND F.dest_city LIKE ‘%San Francisco%’ 
GROUP BY carrier 
ORDER BY carrier; 