SELECT 
    COUNT(DISTINCT m.id) AS cancoes,
    COUNT(DISTINCT ar.id) AS artistas,
    COUNT(DISTINCT al.id) AS albuns
FROM
    SpotifyClone.musics AS m
        JOIN
    SpotifyClone.albuns AS al ON al.id = m.album_id
        JOIN
    SpotifyClone.artists AS ar ON ar.id = al.artist_id;
