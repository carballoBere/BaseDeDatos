--Mostrar el nombre y duración de las canciones de los discos de "Deep Purple"

SELECT name, Miliseconds FROM tracks
WHERE AlbumId IN(SELECT AlbumId FROM albums WHERE Title like "%Dep Purple%")