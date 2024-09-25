create table empresa (
	id_empresa serial primary key,
    razao_social varchar(255),
    cnpj varchar(55),
    endereco varchar(255),
    email varchar(255)
);

create table entregador (
	id_entregador serial primary key,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    email varchar(255),
    veiculo varchar(255),
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id_empresa)
);

create table funcionario (
	id_funcionario serial primary key,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    email varchar(255),
    data_contratacao date,
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id_empresa)
);

create table cliente (
	id_cliente serial primary key,
    nome varchar(255),
    cpf varchar(15),
    data_nasc date,
    endereco varchar(255),
    email varchar(255)
);

create table telefone (
	id_telefone serial primary key,
    ddd int,
    telefone varchar(50),
    fk_cliente int,
    constraint cliente foreign key (fk_cliente) references cliente(id_cliente),
    fk_empresa int,
    constraint empresa foreign key (fk_empresa) references empresa(id_empresa),
    fk_funcionario int,
    constraint funcionario foreign key (fk_funcionario) references funcionario(id_funcionario)
);


create table categoria (
	id_categoria serial primary key,
    nome varchar(255),
    descricao varchar(255)
);

create table produto (
	id_produto serial primary key,
    nome varchar(255),
    descricao varchar(255),
    preco float,
    fk_categoria int,
    constraint categoria foreign key (fk_categoria) references categoria(id_categoria)
);

create table pedido (
	id_pedido serial primary key,
    data_ped date,
    hora_ped time,
    preco_tot float,
    observacao varchar(255),
    status_ped varchar(55),
    fk_cliente int,
    constraint cliente foreign key (fk_cliente) references cliente(id_cliente)
);

create table item_pedido (
	id_item serial primary key,
    fk_pedido int,
    constraint pedido foreign key (fk_pedido) references pedido(id_pedido),
    fk_produto int,
    constraint produto foreign key (fk_produto) references produto(id_produto),
    quantidade int,
    preco float
);

create table notificacao (
	id_notificacao serial primary key,
    mensagem varchar(255),
    data_noti date,
    hora_noti time,
    fk_funcionario int,
    constraint funcionario foreign key (fk_funcionario) references funcionario(id_funcionario),
    fk_pedido int,
    constraint pedido foreign key (fk_pedido) references pedido(id_pedido)
);
