/*
join con tablas que tienen relaciones de muchos a muchos
usando bd employees
*/

select * 
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no);

/*
ejercicio
de la bd sakila usando la tabla actor, film y film_actor
obtener el nombre, el titulo del film y la fecha de lanzamiento del
film
*/

select 
	concat(a.first_name, ' ', a.last_name) as nombreActor,
    f.title as tituloPelicula,
    f.release_year
from actor a
join film_actor fa using(actor_id)
join film f using(film_id)