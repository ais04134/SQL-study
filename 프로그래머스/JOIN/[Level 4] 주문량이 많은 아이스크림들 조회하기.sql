SELECT j.flavor
FROM first_half AS f
INNER JOIN july AS j
ON f.flavor = j.flavor
GROUP BY f.flavor
ORDER BY (SUM(j.total_order) + SUM(f.total_order)) DESC
LIMIT 3;