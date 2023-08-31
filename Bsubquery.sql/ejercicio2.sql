--Mostrar los titulos de los discos de "Deep Purple"

SELECT Title FROM albums
WHERE ArtistId =(SELECT Artistid FROM artist WHERE name = "Deep Purple")
