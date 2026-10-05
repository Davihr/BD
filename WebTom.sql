CREATE DATABASE webtom;

USE webtom;

CREATE TABLE publicacao(
	id_publicacao INT AUTO_INCREMENT PRIMARY KEY,
    conteudo VARCHAR(100),
    descricao VARCHAR(300),
    data_publicacao DATETIME
);

CREATE TABLE feed(
	id_feed INT AUTO_INCREMENT PRIMARY KEY,
    conteudo VARCHAR(100) NOT NULL,
    anuncios BOOLEAN NOT NULL
);

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    username VARCHAR(15) NOT NULL,
    bio VARCHAR(300) NOT NULL,
    configuracoes VARCHAR(1000),
    id_feed INT,
    FOREIGN KEY (id_feed) REFERENCES feed(id_feed)
);

CREATE TABLE userpost(
	id_userpost INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	id_publicacao INT,
    FOREIGN KEY (id_publicacao) REFERENCES publicacao(id_publicacao)
);