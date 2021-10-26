/*
uso de sentencia all en sql
all lo que hace es obtener de todo el set de datos
en base a la condicion dada por la subquery, esto evita agrupaciones
como max() que solo nos devuelve un registro
uso de bd sakila
*/

select * from payment
where amount > all(
	select amount from payment
    where customer_id = 260
);

