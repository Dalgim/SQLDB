/*
uso de withrollup en sql
podemos mantener nuestro set de resultados, nos permite colocar
un subtotal
*/

select
	customer_id,
    sum(amount) as total
from payment
group by customer_id 
with rollup;

/*
obtener el total de ciudades por paises y el total de todos los
paises
*/

select 
	country,
    sum(city_id) as sumaCiudades
from country
join city using(country_id)
group by country with rollup