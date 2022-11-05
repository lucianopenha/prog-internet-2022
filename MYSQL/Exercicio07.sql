select p.pedido_id as numero_pedido,
p.data as data_pedido,
p.cliente_id as codigo_cliente,
c.nome as nome_cliente,
sum(i.quantidade * i.valor) total_pedido
from pedido as p
inner join pedido_item as i on i.pedido_id = p.pedido_id
inner join cliente as c on c.cliente_id = p.cliente_id
group by p.pedido_id, p.cliente_id, c.nome
order by p.data, 5 desc, p.pedido_id
limit 10