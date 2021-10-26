/* 
LEFT JOIN hace enfasis a la tabla que esta a la izquierda
RIGTH JOIN hace enfasis a la tabla que esta a la derecha
*/

-- uso de left join
/* 
en este caso da prioridad a la tabla address 
y me muestra todos los registros a partir del id 1 aunque
no haya un id de customer asociado a los primeros 4 id de 
address, podemos encontrar left join como left outer join y es lo mismo
*/
select  a.address, a.address_id, c.customer_id
from address a
left join customer c
on a.address_id = c.address_id;

-- uso de right join 
/* 
en este caso da prioridad a la tabla customer 
y me muestra todos los registros a partir del id 5 
*/
select  a.address, a.address_id, c.customer_id
from address a
right join customer c
on a.address_id = c.address_id;

-- ejercicio: mostrar desde customer todos los clientes que no tienen
-- pagos, osea, clientes que no estan en la tabla de payment (is null)
-- (hacer un join entre customer y payment)
select 
	*
from customer c
left join payment p
on p.customer_id = c.customer_id
where p.customer_id IS NULL;