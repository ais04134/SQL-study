SELECT b.animal_id, b.name
FROM animal_ins AS a
RIGHT OUTER JOIN animal_outs AS b
ON a.animal_id = b.animal_id
WHERE a.animal_id IS NULL
ORDER BY b.animal_id ASC;