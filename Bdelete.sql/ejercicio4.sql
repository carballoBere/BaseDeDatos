--Borrar la categoría “Horror”, pensar que cosas habría que hacer primero para poder borrarla.

DELETE FROM film_category WHERE category_id = (SELECT category_id from category WHERE name like "%Horror%");
DELETE from category WHERE name like "%Horror%";
SELECT name FROM category;