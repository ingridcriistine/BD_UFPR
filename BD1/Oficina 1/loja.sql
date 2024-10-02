create table cliente (
	idCliente serial,
	nome varchar(55),
	cpf varchar(15),
	endereco varchar(255),
	telefone varchar(15),
	email varchar(255),
	constraint pkcliente primary key (idCliente)
);

create table loja (
	idLoja serial,
	razao_social varchar(55),
	cnpj varchar(16),
	endereco varchar(255),
	telefone varchar(15),
	constraint pkloja primary key (idLoja)
);

create table tipo (
	idTipo serial,
	nome varchar(55),
	constraint pktipo primary key (idTipo)
);

create table pedido (
	idPedido serial,
	preco_tot float,
	data_ped date,
	idLoja integer,
	idCliente integer,
	constraint pkpedido primary key (idPedido),
	constraint fkcliente foreign key (idCliente) references cliente(idCliente),
	constraint fkloja foreign key (idLoja) references loja(idLoja) 
);

create table produto (
	idProduto serial,
	nome varchar(55),
	descricao varchar(255),
	preco float,
	idPedido integer,
	idLoja integer,
	idTipo integer,
	constraint pkproduto primary key (idProduto),
	constraint fkpedido foreign key (idPedido) references pedido(idPedido),
	constraint fkloja foreign key (idLoja) references loja(idLoja), 
	constraint fktipo foreign key (idTipo) references tipo(idTipo)
);


INSERT INTO cliente (nome, cpf, endereco, telefone, email) VALUES
('Ana Silva', '12345678900', 'Rua A, 123', '4198765-4321', 'ana@email.com'),
('João Oliveira', '98765432100', 'Rua B, 456', '4191234-5678', 'joao@email.com'),
('Maria Santos', '55566677788', 'Rua C, 789', '4199876-5432', 'maria@email.com'),
('Carlos Pereira', '44433322211', 'Rua D, 101', '4194567-8910', 'carlos@email.com'),
('Fernanda Lima', '22233344455', 'Rua E, 202', '4193456-7890', 'fernanda@email.com');

INSERT INTO loja (razao_social, cnpj, endereco, telefone) VALUES
('Loja', '33445566000134', 'Av. Sept, 5', '4130005000');

INSERT INTO tipo (nome) VALUES
('Eletronico'),
('Roupa'),
('Beleza');

INSERT INTO pedido (preco_tot, data_ped, idLoja, idCliente) VALUES
(2500.00, '2024-10-01', 1, 1),
(4200.00, '2024-10-02', 1, 2),
(30.00, '2024-10-03', 1, 3),
(70.90, '2024-10-04', 1, 4);

INSERT INTO produto (nome, descricao, preco, idPedido, idLoja, idTipo) VALUES
('Celular', 'Celular 256GB', 2500.00, 1, 1, 1),
('Notebook', 'Notebook i8', 4200.00, 2, 1, 1),
('Camiseta', 'Camiseta preta', 30.00, 3, 1, 2),
('Vestido', 'Vestido curto', 50.90, 4, 1, 2),
('Rímel', 'Rímel preto', 20.00, 4, 1, 3);



select * from cliente;
select * from loja;
select * from tipo;
select * from pedido;
select * from produto;

