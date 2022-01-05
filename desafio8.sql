SELECT 
    ar.name AS artista, al.title AS album
FROM
    SpotifyClone.albuns AS al
        JOIN
    SpotifyClone.artists AS ar ON al.artist_id = ar.id
WHERE
    ar.name = 'Walter Phoenix'
ORDER BY album;
