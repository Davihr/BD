CREATE DATABASE empresa;

USE empresa;

CREATE TABLE departamento(
	id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE projetos(
	id_projetos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    observacoes VARCHAR(100) NOT NULL
);

CREATE TABLE funcionarios(
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    registro_funcionario INT NOT NULL,
    profissao VARCHAR(50) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE funcionarioprojeto(
	id_funcionarioprojeto INT AUTO_INCREMENT PRIMARY KEY,
	id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
	id_projetos INT,
    FOREIGN KEY (id_projetos) REFERENCES projetos(id_projetos)
);
-- 3 departamentos
INSERT INTO departamento (nome, data_inicio, data_fim, descricao) VALUES
('Tecnologia', '2026-01-10 08:00:00', '2026-12-20 18:00:00', 'Departamento de tecnologia'),
('Recursos Humanos', '2026-02-01 08:00:00', '2026-11-30 18:00:00', 'Departamento de RH'),
('Financeiro', '2026-03-01 08:00:00', '2026-12-15 18:00:00', 'Departamento financeiro');


-- 3 projetos
INSERT INTO projetos (nome, descricao, observacoes) VALUES
('Sistema Web', 'Desenvolvimento de sistema web', 'Projeto em andamento'),
('Contratação', 'Sistema para contratação de funcionários', 'Análise de candidatos'),
('Controle Financeiro', 'Sistema de controle financeiro', 'Atualização mensal');


-- 3 funcionários
INSERT INTO funcionarios (nome, registro_funcionario, profissao, id_departamento) VALUES
('Davi Cruz', 1001, 'Programador', 1),
('Lucas Silva', 1002, 'Analista de RH', 2),
('Pedro Souza', 1003, 'Contador', 3);


-- 3 relações entre funcionários e projetos
INSERT INTO funcionarioprojeto (id_funcionario, id_projetos) VALUES
(1, 1),
(2, 2),
(3, 3);