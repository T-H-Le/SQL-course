/* VIEW (vista) */ 
-- es una 'consulta guardada' que se comporta como una tabla virtual. Útil para simplificar consultas complejas, o restringir qué datos ve alguien.
CREATE VIEW view_adult_users AS
SELECT name, age 
FROM users
WHERE age >= 18;

SELECT * FROM view_adult_users;

-- ELimina la vista view llamada 'view_adult_users'        
DROP VIEW view_adult_users