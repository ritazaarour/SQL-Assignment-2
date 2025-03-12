/* List all tracks that were never purchased by any customers. 
Return distinct track names. We only need the name attribute. */
SELECT DISTINCT T.name AS songs 
FROM track T WHERE T.track_id NOT IN 
    (SELECT T2.track_id FROM track T2 JOIN invoice_line il ON T.track_id = il.track_id WHERE T2.track_id = IL.track_id )
ORDER BY T.name;
