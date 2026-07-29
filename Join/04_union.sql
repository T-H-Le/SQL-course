/* UNION (FULL JOIN) */
-- UNION ELE

select * from users
where age > 60
union
select * from users 
where age < 20