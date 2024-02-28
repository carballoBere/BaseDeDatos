--Mostrar los puestos laborales de manager (que incluya la palabra manager)
--junto con sus salarios minimos y maximos, ordenado de mayor a menor
SELECT job_title as puesto_laboral,max_salary as salario_maximo ,min_salary as salario_minimo  FROM jobs j
JOIN employees em ON j.job_id = em.job_id 
WHERE job_title like "%manager%"
ORDER BY salario_maximo desc;



