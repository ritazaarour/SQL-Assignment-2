/* Find the list of artists that record at least in 3 different 
genres. Again, return only the artist name. */
SELECT A.name 
FROM artist A 
JOIN album AL ON A.artist_id = AL.artist_id 
JOIN track T ON AL.album_id = T.album_id 
GROUP BY (A.name) 
HAVING COUNT(DISTINCT T.genre_id) >= 3 
ORDER BY A.name;
