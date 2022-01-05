SELECT 
    u.name AS usuario,
    CASE
        WHEN YEAR(MAX(ph.reproduction_date)) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM
    SpotifyClone.play_history AS ph
        JOIN
    SpotifyClone.users AS u ON ph.user_id = u.id
GROUP BY usuario
ORDER BY usuario;
