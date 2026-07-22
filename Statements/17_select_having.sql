-- La cláusula HAVING filtra los groupos después de que se haya realizado la agregación 
SELECT age, count(age)  FROM users 
GROUP BY age
HAVING count(age) > 1
ORDER BY age ASC


 