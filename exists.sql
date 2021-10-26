/*
uso de exists en sql
exists nos sirve muy parecido al uso de in y de un left
join, exists a diferencia de los dos mencionados
retornara un true si cumple o un false si la condicion de la
subquery no se cumple.
uso de bd sakila
*/

-- uso de in (primera forma)
select *
from customer
where customer_id not in (
	select customer_id 
    from payment
);

-- uso de left join (segunda forma)
select *
from customer
left join payment using(customer_id)
where payment.payment_id is null;

-- uso de exists (tercera forma)
select *
from customer c
where not exists(
	select customer_id
    from payment
    where payment.customer_id = c.customer_id
);

/*
ejercicio
encontrar todos los actores que no esten en ningun film 
*/

select 
	*
from actor a
where not exists(
	select actor_id
    from film_actor
    where film_actor.actor_id = a.actor_id
);