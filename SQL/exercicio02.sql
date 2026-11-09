CREATE DATABASE exercicio02;

USE exercicio02;

CREATE TABLE time_basquete(
	id_jogador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    posicao VARCHAR(15),
    numero INT,
    data_nascimento VARCHAR(20)
);

INSERT INTO time_basquete(nome, posicao, numero, data_nascimento)
VALUES
('Davi Cruz', 'Ala', 777, '23/11/2009'),
('Big Cesar','Pivô', 67, '14/06/2009'),
('Gabriel', 'Ala', 69, '11/03/2010'),
('Jhonshon', 'Ala', 77, '09/09/2009'),
('Matheus Gonçalves', 'Armardor', 12, '06/01/2011');

UPDATE time_basquete
SET nome = 'Cesão'
WHERE nome LIKE 'Big Cesar';

DELETE FROM time_basquete
WHERE nome = 'Matheus Gonçalves';

SELECT * FROM time_basquete
WHERE posicao = 'Ala';

SELECT * FROM time_basquete
WHERE numero BETWEEN 60 AND 80;