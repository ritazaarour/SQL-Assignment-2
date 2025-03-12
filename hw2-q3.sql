SELECT origin_city, SUM(CASE WHEN actual_time < 180 THEN 1 ELSE 0 END)*100 / COUNT(*) AS percentage 
FROM Flights 
GROUP BY origin_city 
ORDER BY percentage;