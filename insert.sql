INSERT INTO GENEROS (nome_genero) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Terror'),
('Ficção Científica');

INSERT INTO Clientes (nome, cpf, endereco, telefone, email) VALUES
('Mauricio Oliveira', '123.987.546-88', 'Rua A, 109 - Rio Bonito', '(11) 9914-3355', 'mauricio@email.com'),
('Maria Souza', '987.654.321-00', 'Av. B, 200 - Rio de Janeiro', '(21) 98888-7777', 'maria@email.com'),
('Carlos Oliveira', '115.889.333-75', 'Rua C, 308 - Baia', '(31) 99977-8866', 'carlos@email.com');

INSERT INTO Funcionarios (nome, cpf) VALUES
('Ana Santos', '999.888.777-66'),
('Pedro Rocha', '444.333.222-11'),
('Luiza Mendes', '555.666.777-88');

INSERT INTO DVDs (titulo, id_genero, diretor, duracao_minutos, classificacao_indicativa, quantidade_estoque) VALUES
('Homem de Ferro', 1, 'Jon Favreau', 126, '12', 3),
('Clube da Luta', 1, 'David Fincher', 139, '18', 2),
('Toy Story', 2, 'John Lasseter', 81, 'L', 4),
('Capitão América', 1, 'Joe Johnston', 124, '12', 3);

INSERT INTO Alugueis (id_cliente, id_dvd, id_funcionario, data_devolucao_prevista, valor) VALUES
(1, 1, 1, DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 10.50),
(2, 3, 2, DATE_ADD(CURRENT_DATE, INTERVAL 5 DAY), 8.00),
(3, 4, 3, DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY), 12.00);

INSERT INTO Alugueis (id_cliente, id_dvd, id_funcionario, data_retirada, data_devolucao_prevista, data_devolucao_real, valor, multa, status) VALUES
(1, 2, 1, '2025-07-01', '2025-07-08', '2025-07-10', 9.50, 5.00, 'Devolvido');