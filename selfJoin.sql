/*
uso de SELF JOIN
esto nos permite hacer un join sobre la misma tabla
*/

select 
	concat(h.first_name, ' ', h.last_name) as son,
    concat(p.first_name, ' ', p.last_name) as father,
    h.parent_id,
    p.customer_id
from customer h
join customer p
on h.parent_id = p.customer_id;

-- ejercicio, mostrar todos los clientes independientemente tengan
-- hijos o no, respetando el self join a la misma tabla

select 
	concat(h.first_name, ' ', h.last_name) as son,
    concat(p.first_name, ' ', p.last_name) as father,
    h.parent_id,
    p.customer_id
from customer h
left join customer p
on h.parent_id = p.customer_id;