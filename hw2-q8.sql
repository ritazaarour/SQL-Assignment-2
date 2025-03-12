/* List the names of all songs that do not belong to the 90s Music 
playlist. Return distinct track names (only the name attribute). */
SELECT DISTINCT T.name 
FROM track T 
JOIN playlist_track PT ON T.track_id = PT.track_id 
WHERE PT.track_id NOT IN (SELECT PT2.track_id FROM playlist_track PT2 WHERE PT2.playlist_id = 5) 
ORDER BY T.name;
