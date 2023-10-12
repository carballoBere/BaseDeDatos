SELECT COUNT(title) as pelis,dc.direccion,dc.ciudad,dc.pais
FROM film f JOIN inventory i
ON f.film_id = i.film_id
JOIN store s
ON i.store_id = s.store_id
JOIN direccion_completa dc
ON s.address_id = dc.address_id
GROUP BY dc.direccion,dc.ciudad, dc.pais