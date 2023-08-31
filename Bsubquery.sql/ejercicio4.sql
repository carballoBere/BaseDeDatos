--Calcular el promedio de lo que gastan los usuarios en el sistema

SELECT AVG(suma) as promedio
FROM (SELECT SUM(total) AS suma FROM invoices
 GROUP BY CustomerId); 