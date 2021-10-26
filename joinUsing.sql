/*
usando JOIN con USING
*/

select address, city
from address a 
join city c
on a.city_id = c.city_id;

/*
en vez de colocar un on despues del join, podemos utilizar using
*/

select address, city
from address a 
join city c
using(city_id);

select address, city, country
from address a 
join city c
using(city_id)
join country co
using(country_id);

/*
tomar desde la tabla payment el amount, payment_date y hacer un
join con la tabla costumer y staff uniendo el nombre en ambos casos
*/

select 
	p.amount,
    p.payment_date,
    concat(c.first_name, ' ', c.last_name) as customerName,
    concat(s.first_name, ' ', s.last_name) as managerName
from payment p
join customer c
using(customer_id)
join staff s
using(staff_id)

