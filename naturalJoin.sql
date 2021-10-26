/*
uso de natural join en tabla employees
aunque no recomendado su uso pero permitido en sql nos permite
unir dos tablas que tengan llaves en comun, sin embargo los resultados
no pueden ser los esperados ya que se hara match con todos los datos que
coincidan entre las dos tablas
*/

select * 
from salaries
natural join employees;
