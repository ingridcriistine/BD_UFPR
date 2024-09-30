CREATE TABLE tipo(
	codt SERIAL,
	nome VARCHAR(255),
	CONSTRAINT pktipo PRIMARY KEY (codt)
);

CREATE TABLE produto(
	codp SERIAL,
	nome VARCHAR(255),
	valor INTEGER,
	codt INTEGER,
	CONSTRAINT pkproduto PRIMARY KEY (codp),
	CONSTRAINT fktipoProduto FOREIGN KEY (codt) references tipo(codt)
);

insert into tipo (nome) values 
('LIMPEZA'),
('HIGIENE'), 
('LATICÍNIO'), 
('FARINÁCEOS'),
('FRUTAS'), 
('VERDURAS'), 
('AUTOMOTIVOS');	

INSERT INTO produto(nome, valor, codt) VALUES ('SABAO', 8.50, 1);
INSERT INTO produto(nome, valor, codt) VALUES ('DETERGENTE', 2.30, 1);
INSERT INTO produto(nome, valor, codt) VALUES ('AGUA SANITARIA', 2.50, 1);
INSERT INTO produto(nome, valor, codt) VALUES ('ALCOOL', 7.00, 1);
INSERT INTO produto(nome, valor, codt) VALUES ('SABONETE', 3.50, 2);
INSERT INTO produto(nome, valor, codt) VALUES ('XAMPU', 12.30, 2);
INSERT INTO produto(nome, valor, codt) VALUES ('HIDRATANTE', 15.90, 2);
INSERT INTO produto(nome, valor, codt) VALUES ('CREME DENTAL', 3.80, 2);
INSERT INTO produto(nome, valor, codt) VALUES ('LEITE', 4.69, 3);
INSERT INTO produto(nome, valor, codt) VALUES ('QUEIJO', 30.00, 3);
INSERT INTO produto(nome, valor, codt) VALUES ('REQUEIJAO', 12.00, 3);
INSERT INTO produto(nome, valor, codt) VALUES ('BOLACHA', 10.90, 4);
INSERT INTO produto(nome, valor, codt) VALUES ('BISCOITO', 5.90, 4);
INSERT INTO produto(nome, valor, codt) VALUES ('PAO', 1.00, 4);
INSERT INTO produto(nome, valor, codt) VALUES ('BANANA', 7.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('MACA', 5.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('UVA', 12.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('LARANJA', 4.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('GOIABA', 6.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('ALFACE', 3.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('BROCOLIS', 6.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('COUVE', 6.00, 5);
INSERT INTO produto(nome, valor, codt) VALUES ('ABOBORA', 4.00, 5);

select * from tipo
select * from produto

ALTER TABLE tipo ADD CONSTRAINT uknome UNIQUE(nome);

select produto.nome, tipo.nome, produto.codt, tipo.codt
from tipo, produto where produto.codt = tipo.codt;

update produto set valor = valor + (0.1 * valor) where codt = 3;

delete from produto where codt = 3;
