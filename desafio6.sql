SELECT 
    MIN(p.price) AS faturamento_minimo,
    MAX(p.price) AS faturamento_maximo,
    ROUND(AVG(p.price), 2) AS faturamento_medio,
    SUM(p.price) AS faturamento_total
FROM
    SpotifyClone.users AS u
        JOIN
    SpotifyClone.plans AS p ON u.plan_id = p.id;
