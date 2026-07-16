/* Un alias se crea con la palabra clave AS, y, a menudo, 
se ultiliza para hacer que el nombre de una columna sea más legible. 
Un alias solo existe durante la duración de sea consulta.alter.
*/
SELECT CONCAT('name: ', name, ', surname: ', surname) AS 'Full name' FROM users