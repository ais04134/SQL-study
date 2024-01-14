SELECT YEAR(b.sales_date) AS YEAR,
		MONTH(b.sales_date) AS MONTH,
        a.gender AS gender, 
        COUNT(DISTINCT a.user_id) AS users
FROM user_info AS a 
JOIN online_sale AS b 
ON a.user_id = b.user_id
GROUP BY YEAR, MONTH, gender
HAVING gender IS NOT NULL 
ORDER BY YEAR, MONTH, gender;