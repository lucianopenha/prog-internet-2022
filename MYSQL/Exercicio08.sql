update pedido as p set p.valor=
(select SUM(quantidade * valor) total_pedido
from pedido_item 
where pedido_id=p.pedido_id)
where exists (select pedido_id from pedido_item
where pedido_id=p.pedido_id)


