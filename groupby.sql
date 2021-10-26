/*
uso de group by en sql
este nos permite agrupar los resultados en base a cierto criterio
dado
uso de bd sakila
*/

select
	-- customer_id,
    count(city) as 'Total de ciudades',
	sum(amount) as total,
    city,
    district
from payment
join customer using(customer_id)
join address using(address_id)
join city using(city_id)
where payment_date between '2005-05-15' and '2005-05-30'
group by city, district
order by total desc;

/*
ejercicio
de la tabla actor obtener la cantidad de films por actor
pero solamente mostrar los que tienen mas peliculas
mostrar columnas actor, total ordenado de forma descendente
contar el total de films
*/

select 
	concat(a.first_name, ' ', a.last_name) as nombreActor,
    count(fa.film_id) as TotalPelis
from film_actor fa
join actor a using(actor_id)
group by nombreActor
order by TotalPelis desc
-- agregamos un limite de registros a ver
limit 10;

/*
otra forma de resolver el ejercicio

select 
	concat(a.first_name, ' ', a.last_name) as nombreActor,
    count(fa.film_id) as TotalPelis
from actor a
join film_actor fa using(actor_id)
join film f using(film_id)
group by
	a.first_name,
    a.last_name
order by TotalPelis desc
-- agregamos un limite de registros a ver
limit 10;
*/