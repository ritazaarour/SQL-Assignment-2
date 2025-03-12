SELECT origin_city AS city 
FROM Flights 
GROUP BY origin_city 
HAVING MAX(actual_time) < 180;