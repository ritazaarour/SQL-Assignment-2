/* For each origin city, find the destination city (or cities) with the longest direct flight. 
By direct flight, we mean a flight with no intermediate stops. Judge the longest flight in 
time, not distance.*/
SELECT DISTINCT F.origin_city, F.dest_city, F.actual_time AS time 
FROM Flights F 
JOIN (SELECT origin_city, MAX(actual_time) AS time 
        FROM Flights GROUP BY origin_city) F2 
        ON F.origin_city = F2.origin_city AND F.actual_time = F2.time 
ORDER BY F.origin_city, F.dest_city;
