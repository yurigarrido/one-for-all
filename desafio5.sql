SELECT 
    m.title AS cancao,
    COUNT(*) AS reproducoes
FROM
    SpotifyClone.play_history AS ph
        JOIN
    SpotifyClone.musics AS m ON ph.music_id = m.id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;
