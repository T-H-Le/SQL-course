-- calcula el precio medio de todos los productos
SELECT AVG(date_of_birth) FROM users;

-- devuelva todos los productos con un precio superior/inferior al precio media (average)
SELECT * FROM users WHERE date_of_birth
< (SELECT AVG(date_of_birth) FROM users);