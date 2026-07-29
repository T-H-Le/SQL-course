/* INNER JOIN (JOIN) */

-- Realiza un JOIN de manera incorreta, ya que no existe un campo de relación 
SELECT * FROM users
INNER JOIN dni

-- Obtiene los datos de los usarios que tienen un dni usando INNER JOIN
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id

-- Obtiene los datos de los usarios que tienen un dni usando JOIN (as lo mismo INNER JOIN)
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id

-- Obtiene el nombre y el dni de los usarios que tienen un dni y los ordena por edad
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- Obtiene los datos de las empresas que tienen usarios
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id

-- Obtiene los datos de las empresas que tienen usarios
SELECT * FROM companies
INNER JOIN users
ON users.company_id = companies.company_id

-- Obtiene el nombre de las empresas junto al nombre de sus usarios
SELECT users.name AS User_name, companies.name AS Company FROM companies
INNER JOIN users
ON companies.company_id = users.company_id 
 
-- Obtiene los nombres de usarios junto a los lenguajes que conocen: relacion N:M
SELECT users.name , languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languagues.language_id = languages.language_id;

-- Obtiene los nombres de usarios junto a los lenguajes que conocen, utilizando otro orden de relación entre tablas
SELECT users.name as user_name, languages.name as programming_language
FROM users
JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON languages.language_id = users_languages.language_id