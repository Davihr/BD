CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE leitor (   
id_leitor INT AUTO_INCREMENT PRIMARY KEY,   
nome VARCHAR(100) NOT NULL,   
CPF VARCHAR(100) UNIQUE
);

CREATE TABLE livro (   
id_livro INT AUTO_INCREMENT PRIMARY KEY,   
titulo VARCHAR(100) NOT NULL,   
genero VARCHAR(100) NOT NULL,   
quantidade_livros INT NOT NULL
);

CREATE TABLE autor (   
id_autor INT AUTO_INCREMENT PRIMARY KEY,   
id_livro INT,   
mini_biografia CHAR(100),
nome VARCHAR(100),
quantidade_publicados INT,   
FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE leitor_livro (   
id_leitor_livro INT AUTO_INCREMENT PRIMARY KEY,   
id_leitor INT,   
id_livro INT,   
RE INT,   
preco DECIMAL(10,2),   
FOREIGN KEY (id_leitor) REFERENCES leitor(id_leitor),   
FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);


-- Alteração na tabela
ALTER TABLE leitor
ADD quantidade_lidos INT NOT NULL;

INSERT INTO leitor (nome, CPF, quantidade_lidos) VALUES
('Davi Cruz', '12345678901', 5),
('João Silva', '23456789012', 10),
('Maria Santos', '34567890123', 3),
('Pedro Oliveira', '45678901234', 8);

INSERT INTO livro (titulo, genero, quantidade_livros) VALUES
('Dom Casmurro', 1, 10),
('O Pequeno Príncipe', 2, 15),
('Harry Potter', 3, 20),
('O Hobbit', 4, 8);

INSERT INTO autor (id_livro, mini_biografia, nome, quantidade_publicados) VALUES
(1, 'Escritor brasileiro do século XIX.', 'Machado de Assis', 10),
(2, 'Escritor francês conhecido por suas obras.', 'Antoine de Saint-Exupéry', 5),
(3, 'Autora britânica de fantasia.', 'J. K. Rowling', 12),
(4, 'Escritor britânico de fantasia.', 'J. R. R. Tolkien', 15);

INSERT INTO leitor_livro (id_leitor, id_livro, RE, preco) VALUES
(1, 1, 1, 29.90),
(2, 2, 2, 39.90),
(3, 3, 3, 49.90),
(4, 4, 4, 59.90);

SET SQL_SAFE_UPDATES = 0;

UPDATE autor
SET quantidade_publicados = quantidade_publicados + 1
WHERE nome LIKE '%Machado de Assis%';

INSERT INTO leitor (nome, CPF, quantidade_lidos) VALUES
('Wellintom', '676767676767', 67);

DELETE FROM leitor
WHERE nome = 'Wellintom';