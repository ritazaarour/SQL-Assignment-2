/* List all the playlists that do not have any track in the Rock or 
Blues genres. Return distinct playlist name (only the name attribute). */
SELECT DISTINCT P.name 
FROM playlist P 
WHERE P.playlist_id NOT IN (SELECT P2.playlist_id FROM playlist P2 JOIN playlist_track PT ON P2.playlist_id = PT.playlist_id JOIN track T ON PT.track_id = T.track_id WHERE T.genre_id = 1 OR T.genre_id = 6) 
ORDER BY P.name;
