DROP VIEW direccion_completa;
CREATE VIEW direccion_completa as
SELECT address_id,a.address as direccion,c.city as ciudad,co.country as pais
FROM address a JOIN city c
ON a.city_id = c.city_id
JOIN country co
ON c.country_id = co.country_id;

SELECT COUNT(film_id),dc.direccion,dc.ciudad,dc.pais
FROM inventory i JOIN store s
ON i.store_id = s.store_id
JOIN direccion_completa dc
ON s.address_id = dc.address_id
GROUP BY dc.direccion,dc.ciudad, dc.pais