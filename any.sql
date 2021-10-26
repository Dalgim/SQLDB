/*
uso de any en sql
esta sentencia a diferencia de all, any pregunta
por cualquier valor existente menor a la consulta
en la subquery (all trae a los mayores, any a los
menores) en la bd
uso de bd sakila
*/

select * from payment
where amount > any (
	select amount from payment
    where customer_id = 260
);

-- tambien sirve como reemplazo de IN

select city
from city 
where city_id = any(
	select city_id
    from address 
    where district = 'California'
);