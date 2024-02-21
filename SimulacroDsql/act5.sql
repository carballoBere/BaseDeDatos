--Mostrar la lista de todos los países, con la cantidad de ciudades de cada uno
--ordenando de manera que los países con más ciudades queden primero.
SELECT country as pais ,count(city) as ciudad
FROM country co  JOIN city c ON co.country_id = co.country_id
GROUP BY CO.country_id
ORDER BY ciudad DESC ,pais ASC ;

