/*
uso de having en sql
que nos va a permitir condiciones a un set de datos (sea una suma, un promedio,
un count) es decir, datos que ya estan agrupados
uso de bd sakila
*/

select
	customer_id,
    sum(amount) as total,
    count(customer_id) as totalCustomer
from payment
group by customer_id
having total > 100 and totalCustomer > 30;

/*
ejercicio.
de la tabla actor, me muestre la cantidad de films en donde la suma
replacement_cost sea mayor a 700, mostrar los films por actor donde la
suma de replacement_cost sea mayor a 700
*/

select
	concat(first_name, ' ', last_name) as actor,
    count(film_id) as films,
    sum(replacement_cost) as costo
from actor
join film_actor using(actor_id)
join film using(film_id)
group by actor
having costo > 700
order by costo desc;