select pizza_id as codigo_pizza, nome as nome_pizza, valor as valor_pizza
from pizza
where valor < 20.00
order by valor desc
