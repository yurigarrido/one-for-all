SELECT
    ar.name AS artista,
    al.title AS album,
    COUNT(*) AS seguidores
  FROM SpotifyClone.artists AS ar
  JOIN SpotifyClone.albuns AS al ON ar.id = al.artist_id
  JOIN SpotifyClone.users_artists AS ua ON ar.id = ua.artist_id
  GROUP BY album, artista
  ORDER BY seguidores desc, artista, album;
