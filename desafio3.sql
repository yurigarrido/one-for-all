SELECT 
    u.name AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM(m.duration) / 60, 2) AS total_minutos
FROM
    SpotifyClone.play_history AS ph
        JOIN
    SpotifyClone.users AS u ON ph.user_id = u.id
        JOIN
    SpotifyClone.musics AS m ON ph.music_id = m.id
GROUP BY usuario
ORDER BY usuario;
