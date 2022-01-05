SELECT 
    m.title AS nome, COUNT(*) AS reproducoes
FROM
    SpotifyClone.play_history AS ph
        JOIN
    SpotifyClone.users AS u ON ph.user_id = u.id
        JOIN
    SpotifyClone.musics AS m ON ph.music_id = m.id
WHERE
    u.plan_id IN (1 , 2)
GROUP BY nome
ORDER BY nome;
