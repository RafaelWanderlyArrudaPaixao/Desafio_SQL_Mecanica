use automec;

insert into clientes (f_name, l_name, endereco, telefone)
values
    ('João', 'Pereira', 'Rua das Flores, 123', '11223344556'),
    ('Maria', 'Carla', 'Avenida Principal, 456', '99887766554'),
    ('Carlos', 'Abraão', 'Rua da Esquina, 789', '88776655443'),
    ('Ana', 'Carolina', 'Travessa dos Palmares, 367', '99887766550');

insert into veiculo (id_cliente, modelo, placa)
values
    (1, 'Corolla', 'ABC1234'),
	(3,'Gol', 'DEF5678'),
    (1, 'Civic', 'XYZ5678'),
    (2, 'Focus', 'GHI9012'),
    (4, 'Focus', 'DEF4321'),
    (3, 'Cruze', 'GHI9876'),
    (3, 'Onix', 'MNO6789'),
    (4, 'Sentra', 'MNO7890'),
    (4, 'HB20', 'STU4567'),
    (4, 'Elantra', 'PQR5432'),
    (4, 'Optima', 'STU2109');

insert into mecanico (id_mecanico, f_name, l_name, endereco)
values
    (1,'Martins', 'Malon', 'Rua das Flores, 123'),
    (2,'Gabriel', 'Ribeiro', 'Praça da Lua, 456'),
    (3,'Valentina', 'Carol', 'Rua das Nuvens, 23');

insert into servico (descricao_servico, preco)
values
    ('Troca de óleo', 50.00),
    ('Alinhamento e balanceamento', 80.00),
    ('Substituição de correia dentada', 180.00),
    ('Reparo na suspensão', 150.00),
    ('Diagnóstico de motor', 60.00),
    ('Reparo de sistema elétrico', 100.00),
    ('Substituição de bateria', 70.00);
    
insert into peca (descricao_peca, preco)
values
    ('Filtro de óleo', 10.00),
    ('Pastilhas de freio', 40.00),
    ('Correia dentada', 30.00),
    ('Lâmpada do farol', 5.00),
    ('Bateria automotiva', 70.00),
    ('Sensor de oxigênio', 25.00),
    ('Vela de ignição', 8.00),
    ('Termostato', 15.00);
    
insert into ordem (id_veiculo, id_mecanico, data_entrada, data_entrega, status_veiculo, total)
values
    (1, 1, '2023-08-10', '2023-08-15', 'Em Progresso', 0.00),
    (1, 2, '2023-07-20', '2023-07-25', 'Concluído', 150.00),
    (1, 3, '2023-09-05', '2023-09-10', 'Agendado', 0.00),
    (2, 2, '2023-08-12', '2023-08-17', 'Em Progresso', 0.00),
    (2, 4, '2023-07-25', '2023-07-30', 'Concluído', 200.00),
    (2, 3, '2023-08-30', '2023-09-04', 'Agendado', 0.00),
    (3, 1, '2023-08-15', '2023-08-20', 'Em Progresso', 0.00),
    (3, 3, '2023-09-10', '2023-09-15', 'Concluído', 180.00),
    (4, 2, '2023-08-20', '2023-08-25', 'Em Progresso', 0.00),
    (4, 3, '2023-07-30', '2023-08-04', 'Concluído', 220.00),
    (4, 2, '2023-09-15', '2023-09-20', 'Agendado', 0.00),
    (5, 1, '2023-08-25', '2023-08-30', 'Agendado', 0.00),
    (6, 3, '2023-09-04', '2023-09-09', 'Agendado', 0.00),
    (6, 2, '2023-08-04', '2023-08-09', 'Em Progresso', 0.00),
    (6, 2, '2023-09-20', '2023-09-25', 'Concluído', 210.00),
    (7, 1, '2023-08-30', '2023-09-04', 'Concluído', 100.00),
    (7, 2, '2023-08-09', '2023-08-14', 'Agendado', 0.00),
    (8, 3, '2023-09-09', '2023-09-14', 'Em Progresso', 0.00),
    (8, 1, '2023-08-14', '2023-08-19', 'Concluído', 130.00),
    (8, 2, '2023-09-25', '2023-09-30', 'Agendado', 0.00),
    (9, 1, '2023-09-15', '2023-09-20', 'Agendado', 0.00),
    (9, 2, '2023-08-19', '2023-08-24', 'Em Progresso', 0.00),
    (10, 1, '2023-08-01', '2023-08-03', 'Concluído', 160.00),
    (10, 2, '2023-08-10', '2023-08-12', 'Concluído', 250.00),
    (11, 3, '2023-08-15', '2023-08-18', 'Concluído', 120.00);
