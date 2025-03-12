SELECT DISTINCT A.name 
FROM artist A 
WHERE A.artist_id NOT IN 
    (SELECT DISTINCT A2.artist_id FROM artist A2 JOIN album Al ON A2.artist_id = Al.artist_id JOIN track T ON Al.album_id = T.album_id WHERE T.genre_id = 6)
ORDER BY A.name; 
