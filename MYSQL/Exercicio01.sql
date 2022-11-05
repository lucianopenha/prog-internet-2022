select pedido_id  as numero_pedido,
 data as data_pedido,
 cliente_id as codigo_cliente
from pedido 
where data >= '2022-01-01' and data <= '2022-01-31'
order by data 
