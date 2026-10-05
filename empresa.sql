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