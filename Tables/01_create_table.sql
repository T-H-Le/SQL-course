-- CREATE TABLE
-- Crea una tabla llamada ´persons´ con nombre columna (atributos) de tipo int, varchar, y date
/* CONSTRAINTS: Restricciones */
/* NOT NULL: Obliga a que el campo id posea siempre un valor no nulo */
/* UNIQUE: Obliga a que el campo id posea valores diferentes */
/* PRIMARY KEY: Establece el campo id como clave primaria para futuras relaciones con otras tablas. 
La clave primaria es el objectivo de las restriciones FOREIGEN KEY en otras tablas.
Es una combinación de una restricción  UNIQUE Y  NOT NULL.
*/
/* CHECK: Establece que el campo age sólo podrá contener valores mayores o iguales a 18 */
/* DEFAULT: Se utiliza para insertar automáticamente un valor predeterminado (default value) en una columna 
si no se especifica ningún valor. */
/* AUTO INCREMENT: Indica que el campo id siempre se va a incrementar en 1 cada nuevo inserto.*/
-- Full code para cumplir los sintax
CREATE TABLE persons (
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE, 
Name varchar(100) NOT NULL,
Age int CHECK(Age >=18),
Email varchar(100),
Created datetime DEFAULT current_timestamp(),
City varchar(100) DEFAULT 'A Coruña'
)
;
