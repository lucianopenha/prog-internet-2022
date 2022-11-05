select pedido_id as numero_pedido, 
SUM(quantidade * valor) as total_pedido
from pedido_item group by pedido_id
order by 2 desc
limit 10