/* INDEX */ 
-- Crea un índice llamado 'idx_name' en la tabla 'users' asociado al campo 'name'
/* La instrucción CREATE INDEX se utiliza para crear índices en las tablas de las bases de datos, con el fin de acelerar la recuperación de datos.
Nota: Actulizar tablas con índices lleva más tiempo actualizar tablas sin índices (porque también hay que actualizar los índices). 
Por lo tanto, solo cree índices en las columnas que se consultan con frequencia.*/
 -- Crea un índice llamado 'idx_name' en la tabla 'users' asociado al campo 'name'
 CREATE INDEX idx_name ON users(name);
 
 -- Crea un índice único llamado 'idx_name' en la tabla 'users' asociado al campo 'name'
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crea un índice llamado 'idx_name_structure' en la tabla 'users' asociado a los campos 'name' y 'surname'
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

 -- Elimina el índice llamado 'idx_name'
 DROP INDEX idx_name ON users;
 