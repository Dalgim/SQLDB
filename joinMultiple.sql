-- uso de JOIN multiples

select 
	CONCAT(c.first_name, ' ', c.last_name) as CustomerName,
    a.address,
    s.store_id as ID_Tienda ,
    CONCAT(st.first_name, ' ', st.last_name) as AdminName,
    store_address.address as Store_Address
from customer c
join address a
on c.address_id = a.address_id
join store s
on c.store_id = s.store_id
join address store_address
on s.address_id = store_address.address_id
join staff st
on s.manager_staff_id = st.staff_id;

-- ejercicio de la tabla payment obtener el nombre del cliente
-- y obtener el amoun y payment date de ese pago y los datos del
-- administrador que recibio el pago (nombre completo de staff)

SELECT
	concat(c.first_name, ' ', c.last_name) as customerName,
	p.amount,
    p.payment_date,
    concat(s.first_name, ' ', s.last_name) as managerName
from payment p
join customer c
on c.customer_id = p.customer_id
join staff s
on s.staff_id = p.staff_id;

-- otra forma de hacer un join de forma implicita
-- usando where (aunque no es recomendable)

SELECT *
from address a, city c
where a.city_id = c.city_id;
