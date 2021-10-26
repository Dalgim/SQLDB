/*
uso de select case... then en sql
para evaluar mas de una expresion
*/

select
	title,
    release_year,
    case
		when release_year = year(now()) then 'Nuevas'
        when release_year = 2020 then 'Año Pasado'
        when release_year < 2020 then 'Antiguas'
	END as lanzamiento
from film;

/*
ejercicio
de la tabla film definir el rental_rate
si es mayor a 4, mostrar el texto excelente
rental menor a 4 y mayor a 2.5 mostrar el texto buena
y menores a 2.5 el texto regular
*/

select
	title,
    rental_rate,
    case
		when rental_rate >= 4 then 'Excelente'
        when rental_rate < 4 and rental_rate >= 2.5 then 'Buena'
        when rental_rate < 2.5 then 'Regular'
	end as rating
from film;