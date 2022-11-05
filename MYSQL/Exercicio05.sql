select pedido_id as numero_pedido, 
SUM(quantidade * valor) as total_item_vendido
from pedido_item 
group by pedido_id
having SUM(quantidade * valor) > 200.00
order by pedido_id desc