/* List all cities that cannot be reached from San Diego through a 
direct flight but can be reached with one stop (i.e., with any two flights 
that go through an intermediate city). Do not include San Diego as one of 
these destinations (even though you could get back with two flights). */
SELECT F2.dest_city AS city 
FROM Flights F 
JOIN (SELECT origin_city, dest_city 
        FROM Flights 
        WHERE dest_city != 'San Diego CA' AND dest_city NOT IN (SELECT dest_city FROM Flights WHERE origin_city = 'San Diego CA') GROUP BY origin_city, dest_city) F2 ON F.dest_city = F2.origin_city 
WHERE F.origin_city = 'San Diego CA' 
GROUP BY F2.dest_city 
ORDER BY F2.dest_city;
