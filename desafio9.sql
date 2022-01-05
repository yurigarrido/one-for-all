SELECT 
    COUNT(*) as quantidade_musicas_no_historico
FROM
    SpotifyClone.play_history
WHERE
    user_id = 3
