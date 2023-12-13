SELECT b.ingredient_type
    , SUM(a.total_order) AS total_order
FROM first_half AS a
INNER JOIN icecream_info AS b
ON a.flavor = b.flavor
GROUP BY b.ingredient_type
ORDER BY total_order ASC;