/*
usando update con subqueries
una subquery son operaciones que nos permite sql colocar dentro
de la clausula where y usando la palabra reservada in
usando la bd sakila
*/

-- actualizamos el amount de la tabla payment solo de aquellos
-- customers que se apelliden "TERRY"

-- verificamos que customers tienen apellido terry
-- select * from customer where last_name = 'TERRY';

-- hacemos la subquery para usar un select
select * from payment
where customer_id in (
	select customer_id from customer
    where last_name = 'TERRY'
);

-- hacemos la subquery para un update
update payment
set amount = 0.99
where customer_id in (
	select customer_id from customer
    where last_name = 'TERRY'
);

/*
ejercicio:
actualizar todos los customer a activo = 0 donde
el customer pertenezca al pais de angola (debemos pasar
por las tablas address, city y country)
*/

-- primero obtenemos que customers son de angola
-- hacemos un subquery de select
select * from customer
where address_id in (
	select address_id from address
    join city using(city_id)
    join country using(country_id)
    where country = 'Angola'
);

-- hacemos ya sabiendo el subquery de actualizacion
update customer
set active = 0
where address_id in (
	select address_id from address
    join city using(city_id)
    join country using(country_id)
    where country = 'Angola'
);