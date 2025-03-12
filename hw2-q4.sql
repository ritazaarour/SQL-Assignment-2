SELECT F2.dest_city AS city 
FROM Flights F 
JOIN (SELECT origin_city, dest_city 
        FROM Flights 
        WHERE dest_city != 'San Diego CA' AND dest_city NOT IN (SELECT dest_city FROM Flights WHERE origin_city = 'San Diego CA') GROUP BY origin_city, dest_city) F2 ON F.dest_city = F2.origin_city 
WHERE F.origin_city = 'San Diego CA' 
GROUP BY F2.dest_city 
ORDER BY F2.dest_city;