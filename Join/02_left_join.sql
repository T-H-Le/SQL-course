/* LEFT JOIN (JOIN) */

-- Obtiene los datos de todos los usarios junto a su dni (lo tenga o no)
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id

-- Obtiene el nombre de todos los usarios junto a su dni (lo tenga o no) 
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id

-- Obtiene el nombre de todos los usarios junto a su dni (lo tenga o no) 
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id

-- Obtiene el nombre de todos los usarios junto a sus lenguajes (lo tenga o no)
SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON languages.language_id = users_languages.language_id