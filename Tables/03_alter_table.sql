-- ALTER TABLE se utiliza para agregar/añadir, eliminar o modificar columnas en una table existente. 
/*ALTER TABLE persons 
ADD Estado_civil VARCHAR(100);*/
/*ALTER TABLE persons
RENAME COLUMN old_name to new_name;*/
-- MODIFY COLUMN: Modifica el tipo de dato del atributi clumn_name en la tabla persons
/* ALTER TABLE persons
MODIFY COLUMN estado_civil varchar(200)*/
ALTER TABLE persons
DROP COLUMN column_name;


