SELECT name
    , COUNT(animal_type) AS 'count'
FROM animal_ins
GROUP BY name
HAVING COUNT(name) >= 2 
    AND name IS NOT NULL
ORDER BY name ASC;