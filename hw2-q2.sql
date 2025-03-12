/* Find all origin cities that only serve flights shorter than 3 hours. 
You can assume that flights with NULL actual_time are not 3 hours or more.
Name the output column city and sort them. List each city only once in the result. */
SELECT origin_city AS city 
FROM Flights 
GROUP BY origin_city 
HAVING MAX(actual_time) < 180;
