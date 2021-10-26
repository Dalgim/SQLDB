/*
uso de referencias en subqueries
usaremos referencias de una columna de una query a una
subquery usando la misma columna 
usando la bs sakila
*/

/*
vamos a obtener todos los films donde el rental_rate
sea mayor al promedio de su categoria
*/

select 
	f.title,
    f.rental_rate,
    c.name   
from film f
join film_category fc using(film_id)
join category c using(category_id)
where rental_rate > (
	select avg(rental_rate)
    from film
    -- tenemos que hacer una referencia de columna
    -- entre la subquery y la query principal
    join film_category fc2 using(film_id)
	join category c2 using(category_id)
    where c2.category_id = c.category_id
);