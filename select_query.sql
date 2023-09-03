use automec;

-- Qual a quantidade de clientes?
select count(*) as qtd_clientes
	from clientes;

-- Quantos veículos cada cliente tem?
select concat(f_name, ' ', l_name) as Nome_cliente, count(id_veiculo) as qtd_veiculo
	from clientes c
    inner join veiculo v
		on c.id_cliente = v.id_veiculo
	group by c.id_cliente
    order by qtd_veiculo desc;
    
-- Qual a quantidade de veículos registrados?
select count(*) as Total_veiculos
	from veiculo;
    
-- Quantos mecânicos trabalham na oficina?
select count(*) as qtd_mecanicos 
	from mecanico;
    
-- Quantos serviços são oferecidos?
select count(*) as qtd_servicos 
	from servico;
