--Mostrar los nombres de todas las ciudades con su país correspondiente. 
SELECT city , country FROM city c
JOIN country co ON c.country_id = co.country_id 
ORDER BY country , city ;