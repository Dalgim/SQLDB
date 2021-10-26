/*
uso de count en sql
count nos ayuda a contar los registros existentes en una determinada
tabla 
*/

select
	-- asi manda el conteo de todos los registros (incluidos duplicados)
	count(customer_id),
    -- podemos contar los registros que no sean con el mismo id
    count(distinct customer_id) as Unicos
from payment;

/*
obtener el promedio de rental_rate, total de peliculas del año actual,
obtener una columna donde se muestre el año actual como los
años anteriores
*/

select
	-- conteo de todas las peliculas
	count(film_id) as 'Total de Peliculas',
    -- promedio de rate de las peliculas (usando AVG)
	avg(rental_rate) as 'Promedio',
    -- creando la columna año con el año actual o años pasados
	'Año Actual' as Año
from film
where release_year = year(now())
union
select
	-- conteo de todas las peliculas
	count(film_id) as 'Total de Peliculas',
    -- promedio de rate de las peliculas (usando AVG)
	avg(rental_rate) as 'Promedio',
    -- creando la columna año con el año actual o años pasados
	'Años anteriores' as Año
from film
where release_year != year(now());