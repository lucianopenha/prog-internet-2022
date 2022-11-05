select nome, telefone, concat(logradouro,'-',numero), cidade, uf
from cliente
where uf in ('PA', 'MT','CE','MA')
order by uf, cidade, nome