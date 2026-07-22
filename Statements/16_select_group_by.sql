SELECT age, count(age) AS CUSTOMERS_AGE FROM users 
WHERE age > 30
GROUP BY age  
ORDER BY age ASC
 