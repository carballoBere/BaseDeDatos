-- Mostrar la fecha más vieja y la más actual de los ingresos de los empleados
--(Pista: las fechas se pueden comparar, la más vieja sería  la menor y la más actual la mayor).
SELECT min(hire_date) as fecha_vieja ,max(hire_date) as fecha_actual FROM employees
WHERE hire_date is not null ;