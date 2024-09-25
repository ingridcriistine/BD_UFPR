create table empresa (
	id int primary key serial,
    razao_social varchar(255),
    cnpj varchar(15),
    endereco varchar(255),
    email varchar(255)
);

create table entregador (
	id int primary key serial,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    email varchar(255),
    veiculo varchar(255),
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id)
);

create table funcionario (
	id int primary key serial,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    email varchar(255),
    data_contratacao date,
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id)
);

create table cliente (
	id int primary key serial,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    endereco varchar(255),
    email varchar(255)
);

create table telefone (
	id int primary key serial,
    ddd int,
    telefone varchar(50),
    fk_cliente int,
    constraint cliente foreign key (fk_cliente) references cliente(id),
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id),
    fk_func int,
    constraint funcionario foreign key (fk_funcionario) references funcionario(id)
);


create table categoria (
	id int primary key serial,
    nome varchar(255),
    descricao varchar(255),
);

create table produto (
	id int primary key serial,
    nome varchar(255),
    descricao varchar(255),
    preco float,
    fk_categoria int,
    constraint categoria foreign key (fk_categoria) references categoria(id)
);

create table pedido (
	id int primary key serial,
    data_ped date,
    hora_ped time,
    preco_tot float,
    observacao varchar(255),
    status_ped varchar(55),
    fk_cliente int,
    constraint cliente foreign key (fk_cliente) references cliente(id)
);
create table item_pedido (
	id int primary key serial,
    fk_pedido int,
    constraint pedido foreign key (fk_pedido) references pedido(id),
    fk_produto int,
    constraint produto foreign key (fk_produto) references produto(id),
    quantidade int,
    preco float
);

create table notificacao (
	id int primary key serial,
    mensagem varchar(255),
    data_noti date,
    hora_noti time,
    fk_funcionario int,
    constraint funcionario foreign key (fk_funcionario) references funcionario(id),
    fk_pedido int,
    constraint pedido foreign key (fk_pedido) references pedido(id)
);