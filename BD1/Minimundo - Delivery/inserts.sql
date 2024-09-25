INSERT INTO empresa (razao_social, cnpj, endereco, email) VALUES
('Lanchonete', '75.095.679/0001-49', 'Rua I, 555', 'lanchonete@email.com');

INSERT INTO entregador (nome, cpf, data_nasc, email, veiculo, fk_empresa) VALUES
('João Silva', '123.456.789-00', '1990-01-15', 'joao.silva@email.com', 'Moto', 1),
('Maria Oliveira', '234.567.890-01', '1985-03-22', 'maria.oliveira@email.com', 'Bicicleta', 1),
('Carlos Pereira', '345.678.901-02', '1992-07-30', 'carlos.pereira@email.com', 'Carro', 1),
('Ana Souza', '456.789.012-03', '1988-11-05', 'ana.souza@email.com', 'Moto', 1),
('Pedro Santos', '567.890.123-04', '1995-09-10', 'pedro.santos@email.com', 'Carro', 1);

INSERT INTO funcionario (nome, cpf, data_nasc, email, data_contratacao, fk_empresa) VALUES
('Roberto Lima', '123.456.789-10', '1980-02-14', 'roberto.lima@email.com', '2020-06-01', 1),
('Fernanda Costa', '234.567.890-11', '1993-05-28', 'fernanda.costa@email.com', '2021-08-15', 1),
('Juliano Mendes', '345.678.901-12', '1987-10-11', 'juliano.mendes@email.com', '2019-12-01', 1),
('Mariana Torres', '456.789.012-13', '1991-04-22', 'mariana.torres@email.com', '2022-01-10', 1),
('Sérgio Rocha', '567.890.123-14', '1985-07-17', 'sergio.rocha@email.com', '2023-03-25', 1);

INSERT INTO cliente (nome, cpf, data_nasc, endereco, email) VALUES
('Lucas Almeida', '123.456.789-20', '1994-12-05', 'Rua A, 123', 'lucas.almeida@email.com'),
('Tatiane Gomes', '234.567.890-21', '1990-11-22', 'Avenida B, 456', 'tatiane.gomes@email.com'),
('Rafael Santos', '345.678.901-22', '1988-03-18', 'Rua C, 789', 'rafael.santos@email.com'),
('Juliana Silva', '456.789.012-23', '1995-06-30', 'Praça D, 101', 'juliana.silva@email.com'),
('Gabriel Ferreira', '567.890.123-24', '1983-09-25', 'Rua E, 202', 'gabriel.ferreira@email.com');

INSERT INTO telefone (ddd, telefone, fk_cliente, fk_empresa, fk_funcionario) VALUES
(41, '98765-4321', NULL, 1, NULL), 
(41, '91234-5678', NULL, NULL, 1), 
(41, '99876-5432', NULL, NULL, 2), 
(41, '98765-1234', NULL, NULL, 3), 
(51, '91234-8765', 1, NULL, NULL), 
(61, '99876-1234', 4, NULL, NULL), 
(71, '98765-6789', 3, NULL, NULL), 
(41, '91234-4321', NULL, NULL, 4), 
(91, '99876-5678', 2, NULL, NULL),  
(41, '98765-9876', NULL, NULL, 5);  

INSERT INTO categoria (nome, descricao) VALUES
('comida', 'lanche, doce, salgado'),
('bebida', 'agua, refrigerante, cha, cerveja');

INSERT INTO produto (nome, descricao, preco, fk_categoria) VALUES
('Hambúrguer Clássico', 'Um suculento hambúrguer com queijo, alface e tomate.', 19.90, 1),
('Batata Frita', 'Porção de batatas fritas crocantes.', 9.50, 1),
('Refrigerante Lata', 'Refrigerante gelado em lata de 350ml.', 4.00, 2),
('Sanduíche Natural', 'Sanduíche leve com peito de peru, queijo e salada.', 12.00, 1),
('Milkshake de Chocolate', 'Delicioso milkshake de chocolate, cremoso e refrescante.', 15.00, 2);

INSERT INTO pedido (data_ped, hora_ped, preco_tot, observacao, status_ped, fk_cliente) VALUES
('2024-09-20', '12:30:00', 39.80, 'Entregar sem cebola', 'Entregue', 1),
('2024-09-21', '18:45:00', 9.50, 'Adicionar ketchup', 'Entregue', 2),
('2024-09-23', '15:00:00', 12.00, '', 'Entregue', 3),
('2024-09-24', '20:15:00', 12.00, '', 'Em preparação', 4),
('2024-09-24', '21:30:00', 30.00, 'Sem chantilly', 'Pendente', 5);

INSERT INTO item_pedido (fk_pedido, fk_produto, quantidade, preco) VALUES
(1, 1, 2, 19.90), 
(2, 2, 1, 9.50),   
(3, 3, 3, 4.00),   
(4, 4, 1, 12.00),
(5, 5, 2, 15.00);  

INSERT INTO notificacao (mensagem, data_noti, hora_noti, fk_funcionario, fk_pedido) VALUES
('Novo pedido recebido!', '2024-09-20', '12:30:00', 1, 1),
('Novo pedido recebido!', '2024-09-21', '18:45:00', 1, 2),
('Novo pedido recebido!', '2024-09-23', '15:00:00', 2, 3),
('Novo pedido recebido!', '2024-09-24', '20:15:00', 3, 4),
('Novo pedido recebido!', '2024-09-24', '21:30:00', 4, 5);
