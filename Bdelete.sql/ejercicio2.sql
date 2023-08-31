--Borrar los lenguajes que no aparecen en ninguna película.

DELETE FROM language WHERE name not like "%English%"
select * from language