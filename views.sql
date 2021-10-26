/*
manejo de vistas en sql
para guardar consultas importantes en sql y guardandolas
estas al ejecutar la consulta se guarda la consulta en el 
apartado "views" de nuestra bd y se ejecutara como
"select * from sakila.payments_by_customer"

y podemos seguir escribiendo codigo de consulta dentro
de la ejecucion del view, es decir puedo añadir mas join, o una operacion
o solicitar mas datos a la vista misma. Por ejemplo:

SELECT * FROM 
sakila.payments_by_customer
join payment using(customer_id)
order by total_payments desc

usando bd sakila
*/

create view payments_by_customer as
select 
	customer_id,
    concat(first_name, ' ', last_name) as fullName,
    ifnull(sum(amount), 0) as total_payments
from customer
left join payment using(customer_id)
group by customer_id, fullName