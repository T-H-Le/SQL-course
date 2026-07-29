/* STORED PROCEDURES (Procedimiento almacenado) */ 
-- Un bloque de lógica reutilizable, guardado en la base de datos, que puedes ejecutar con parámetros. Como una función
-- Crea un procedimiento almacenado llamado 'p_all_users' para obtiene todos los datos de tabla `users`
DELIMITER //
CREATE PROCEDURE p_all_users ()
BEGIN 
	SELECT * FROM users;
END//
-- Invoca al procedimiento almacenado llamado 'p_all_users'
CALL p_all_users;

-- Crea un procedimiento almacenado llamado 'p_age_users' parametrizado para
-- obtener usarios con edad variable 
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN 
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenaldo llamado 'p_age_users' con un parámetro de valor 30
CALL p_age_users(31)

-- Obtiene usarios con apellido variable 
DELIMITER //
CREATE PROCEDURE p_surname_users(IN surname_param VARCHAR(100)) 
BEGIN 
	SELECT * FROM users where surname = surname_param ORDER BY int_date DESC;
END//
DROP PROCEDURE p_surname_users
-- Invoca al procedimiento almacenado llamado 'p_surname_users' con un parámetro de 'Vergüenza'
 

-- Elimina el procedimiento almacenado 
DROP PROCEDURE p_surname_users;
	