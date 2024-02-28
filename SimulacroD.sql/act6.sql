--Mostrar la lista de todos los países que tienen más de una ciudad.
SELECT country ,COUNT(city) as ciudad FROM city c 
JOIN country co ON c.country_id = co.country_id
GROUP BY co.country_id
HAVING ciudad>1
ORDER BY ciudad asc , country asc ;