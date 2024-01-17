SELECT a.animal_id, a.animal_type, a.name
FROM animal_ins a
JOIN animal_outs b
ON a.animal_id=b.animal_id
WHERE a.sex_upon_intake LIKE 'INTACT%'
AND (b.sex_upon_outcome LIKE 'SPAYED%'
OR b.sex_upon_outcome LIKE 'NEUTERED%')
ORDER BY a.animal_id;