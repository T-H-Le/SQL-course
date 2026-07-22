-- UPDATE normalmente junto con WHERE, si la omitas, ¡se actualizarán TODOS los registros!
UPDATE users SET age = '15', int_date = '2022-03-10' WHERE user_id = 7
-- SELECT * FROM users