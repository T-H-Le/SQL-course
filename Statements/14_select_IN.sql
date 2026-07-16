/* El operador IN se ultiliza en la cláusula WHERE 
para comprobar si el valor de una columna específica coincide con algún valor de una lista proporcionada.
El operador IN funciona como una forma abreviada de múltiples condiciones OR, 
lo que hace que las consultas sean más cortas y legibles. */
SELECT * FROM users 
WHERE surname IN ('Iglesia','Verea','Le')
