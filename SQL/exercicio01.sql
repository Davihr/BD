INSERT INTO clientes (nome, email, cidade, estado, telefone)
VALUES
('Ricardo Akira', 'akira@email.com', 'Rio de Janeiro', 'RJ', '1929292929'),
('Wellintom', 'tom@email.com', 'Rio de Janeiro', 'RJ', '191717171717');

INSERT INTO produtos (nome, preco, estoque)
VALUES
('Playstation 5', 4500.00, 10),
('GTA VI', 520.00, 500);

UPDATE produtos
SET estoque = 10
WHERE nome LIKE 'GTA VI';

DELETE FROM clientes
WHERE nome = 'Ricardo Akira';

SELECT * FROM clientes 
WHERE cidade = 'São Paulo'
ORDER BY nome;

SELECT * FROM produtos
WHERE preco BETWEEN 100 AND 1000;