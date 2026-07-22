-- La cláusula HAVING filtra los groupos después de que se haya realizado la agregación 
SELECT * , 
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Eres mayor de edad?'
FROM users 


 