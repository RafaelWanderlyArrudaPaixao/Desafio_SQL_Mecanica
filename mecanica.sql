-- drop database automec;

create database automec;
use automec;

create table clientes (
	id_cliente int auto_increment primary key,
    f_name varchar(15) not null,
    l_name varchar(20) not null,
    endereco varchar(255),
    telefone char(20)
);
alter table clientes auto_increment = 1;

create table veiculo (
	id_veiculo int auto_increment primary key,
    id_cliente int not null,
    modelo varchar(25),
    placa varchar(10),
    constraint fk_veiculo_cliente
		foreign key (id_cliente) references clientes(id_cliente)
);
alter table veiculo auto_increment = 1;

create table mecanico (
	id_mecanico int auto_increment primary key,
	f_name varchar(15) not null,
    l_name varchar(20) not null,
	endereco varchar(255) not null
);
alter table mecanico auto_increment = 1;

create table servico (
	id_servico int auto_increment primary key,
    descricao_servico varchar(255) not null,
    preco float not null
);
alter table servico auto_increment = 1;

create table peca (
	id_peca int auto_increment primary key,
    descricao_peca varchar(255) not null,
    preco float not null
);
alter table peca auto_increment = 1;

create table ordem (
	id_ordem int auto_increment primary key,
    id_veiculo int,
    id_mecanico int,
    id_servico int,
    id_peca int,
    data_entrada date not null,
    data_entrega date not null,
    status_veiculo enum('Agendado', 'Em Progresso', 'Concluído', 'Cancelado') default 'Agendado',
    total float,
    constraint fk_ordem_veiculo
		foreign key (id_veiculo) references veiculo(id_veiculo),
    constraint fk_ordem_mecanico
		foreign key (id_mecanico) references mecanico(id_mecanico),
    constraint fk_ordem_servico
		foreign key (id_servico) references servico(id_servico),
    constraint fk_ordem_peca
		foreign key (id_peca) references peca(id_peca)
);
alter table ordem auto_increment = 1;
