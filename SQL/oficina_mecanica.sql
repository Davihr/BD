CREATE DATABASE oficina_mecanica;

USE oficina_mecanica;

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE veiculos(
	id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    modelo VARCHAR(100),
    placa VARCHAR(10),
    ano INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE servicos(
	id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(150),
    categoria VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE ordens_servico(
	id_ordens_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_veiculo INT,
    id_servico INT,
    data_os DATE,
    quantidade INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico)
);

INSERT INTO clientes (nome, telefone, cidade, data_cadastro) VALUES
('João Silva', '19999991111', 'Mococa', '2026-07-20'),
('Maria Santos', '19999992222', 'Casa Branca', '2026-07-21'),
('Pedro Oliveira', '19999993333', 'Mococa', '2026-07-22'),
('Ana Costa', '19999994444', 'São José do Rio Pardo', '2026-07-25'),
('Lucas Ferreira', '19999995555', 'Mococa', '2026-07-28');

INSERT INTO veiculos (id_cliente, modelo, placa, ano) VALUES
(1, 'Civic', 'ABC1234', 2020),
(2, 'Corolla', 'DEF5678', 2022),
(3, 'Onix', 'GHI9012', 2021),
(4, 'HB20', 'JKL3456', 2019),
(5, 'Gol', 'MNO7890', 2018);

INSERT INTO servicos (descricao, categoria, preco) VALUES
('Troca de óleo', 'Manutenção', 150.00),
('Alinhamento', 'Suspensão', 100.00),
('Balanceamento', 'Rodas', 80.00),
('Troca de pastilhas', 'Freios', 250.00),
('Revisão completa', 'Manutenção', 500.00);

INSERT INTO ordens_servico (id_cliente, id_veiculo, id_servico, data_os, quantidade) VALUES
(1, 1, 1, '2026-07-25', 1),
(2, 2, 2, '2026-07-27', 1),
(3, 3, 3, '2026-07-28', 2),
(4, 4, 4, '2026-07-29', 1),
(5, 5, 5, '2026-08-01', 1);

SELECT * FROM clientes;

SELECT * FROM ordens_servico
WHERE data_os > '2026-07-27';

UPDATE clientes
SET nome = 'Davi Cruz'
WHERE nome LIKE 'João Silva';

INSERT INTO veiculos (id_cliente, modelo, placa, ano) VALUES
(1, 'Uno', 'XYZ1234', 2015);

DELETE FROM veiculos
WHERE placa = 'XYZ1234';

SELECT cidade, COUNT(*) AS total
FROM clientes
GROUP BY cidade;

SELECT categoria, COUNT(*) AS total
FROM servicos
GROUP BY categoria;

SELECT id_cliente, COUNT(*) AS total
FROM ordens_servico
GROUP BY id_cliente
HAVING COUNT(*) > 1;