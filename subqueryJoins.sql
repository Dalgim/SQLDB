/*
uso de subqueries con join
su uso es mas recomendable ya que no requiere tanta complejidad
y da mejor rendimiento, aunque depende del caso
*/

select * from customer
where customer_id not in(
	select customer_id from payment
);

-- usamos join (left join) sustituyendo a las subqueries
select * from customer
left join payment using(customer_id)
where payment_id is null;

/*
ejercicio
de la bd employees mostrar el departamento que tiene mas
empleados
*/

select 
    dept_name,
    dept_no,
    -- count(1) es igual a decir count(*)
    -- cuenta a todos los registros
    count(1) as totalEmpleados
from departments
left join dept_emp using(dept_no)
group by dept_name
order by totalEmpleados desc
limit 1;

