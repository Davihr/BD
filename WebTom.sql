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

-- 3 feeds
INSERT INTO feed (conteudo, anuncios) VALUES
('Feed principal', 0),
('Feed de tecnologia', 0),
('Feed de esportes', 1);


-- 3 publicações
INSERT INTO publicacao (conteudo, descricao, data_publicacao) VALUES
('Minha primeira publicação', 'Conhecendo a nova rede social.', '2026-10-01 10:00:00'),
('Tecnologia é incrível', 'Hoje aprendi algo novo sobre programação.', '2026-10-02 14:30:00'),
('Meu time ganhou!', 'Foi um ótimo jogo de futebol.', '2026-10-03 20:00:00');


-- 3 usuários
INSERT INTO usuario (nome, username, bio, configuracoes, id_feed) VALUES
('Davi Cruz', 'davihcruz', 'Estudante e programador.', 'Tema escuro', 1),
('João Silva', 'joaosilva', 'Apaixonado por tecnologia.', 'Perfil público', 2),
('Carlos Souza', 'carlossouza', 'Fã de futebol.', 'Notificações ativadas', 3);


-- 3 relações entre usuários e publicações
INSERT INTO userpost (id_usuario, id_publicacao) VALUES
(1, 1),
(2, 2),
(3, 3);