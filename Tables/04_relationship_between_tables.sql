-- TIPOS DE RELACIONES
/*  Relación 1:1 (uno a uno)
Cada registro de una tabla se relaciona con como máximo un registro de otra tabla y viceversa. */
-- El campo user_id de la tabla 'dni' es clave foránea foreign de la clave primaria user_id de la tabla 'users'
-- (Un usuario sólo puede tener un DNI. Un DNI sólo puede estar asociado a un usuario)
-- ¿Por qué usar una clave foránea? La clave foránea garantiza la integridad referencial.  
/* CREATE TABLE DNI(
dni_id int AUTO_INCREMENT PRIMARY KEY UNIQUE,
dni_number int NOT NULL,
user_id int,
FOREIGN KEY(user_id) REFERENCES users(user_id)
);
*/
/*  Relación 1:N (uno a muchos): Un registro de una tabla puede relacionarse con VARIOS registros de otra, 
 pero NO al revés. 
 Ej: una empresa puede tener muchos empleados pero no al revés, un empleado solo puede pertenecer a un empresa.alter*/
 /*CREATE TABLE companies(
 company_id INT AUTO_INCREMENT PRIMARY KEY, 
 name varchar(100) NOT NULL
 );
 ALTER TABLE users 
 ADD company_id int;
 -- El campo company_id de la tabla users es clave foránea de la clave primaria company_id de la tabla 'companies'*/
 /*ALTER TABLE users
 ADD CONSTRAINT fk_companies
 FOREIGN KEY (company_id) REFERENCES companies(company_id)*/
 /* Relación N:M (muchos a muchos): Varios registros de una tabla pueden relacionarse con varios de otra y viceversa. 
 Esto requiere una tabla intermedia (o tabla puente) para establecer la relación. */
/* CREATE TABLE languages (
 language_id int auto_increment NOT NULL  PRIMARY KEY,
 name varchar(100) NOT NULL
 );
 */
 -- El campo user_id y language_id  de la tabla intermedia 'users_languages' es clave foránea de 
 -- las claves primarias user_id de la tabla 'users' y de language_id de la tabla 'languages'
 -- Un usario puede conoces muchos lenguajes. Un lenguaje puede ser conocido por muchos usarios. 
 /*CREATE TABLE users_languages(
 users_languages_id int auto_increment PRIMARY KEY,
 user_id int,
 language_id int,
 FOREIGN KEY(user_id) REFERENCES users(user_id),
 FOREIGN KEY(language_id) REFERENCES languages(language_id),
 UNIQUE(language_id, user_id)
 ); */
-- INSERT INTO dni(dni_id, dni_number, user_id) VALUES (1, 4278445, 1)
-- INSERT INTO dni(dni_id, dni_number, user_id) VALUES (2, 6478835, 2)
--  INSERT INTO dni(dni_id, dni_number, user_id) VALUES (3, 8465530, 3)
-- INSERT INTO dni(dni_id, dni_number) VALUES (4, 46583548)
-- INSERT INTO companies(name) VALUES ('Google')
-- INSERT INTO companies(name) VALUES ('Inditex')
 -- INSERT INTO companies(name) VALUES ('Repsol')
--  users SET company_id = 2 WHERE user_id = 1;
-- UPDATE users SET company_id = 2 WHERE user_id = 3;
-- UPDATE users SET company_id = 1 WHERE user_id = 4;
-- UPDATE users SET company_id = 3 WHERE user_id = 7;
-- INSERT INTO languages (name) VALUES ('Swift');
-- INSERT INTO languages (name) VALUES ('Python');
-- INSERT INTO languages (name) VALUES ('JavaScript');
-- INSERT INTO languages (name) VALUES ('Java');
-- INSERT INTO languages (name) VALUES ('C#');
-- INSERT INTO languages (name) VALUES ('COBOL')
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5)