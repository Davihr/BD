SELECT nome, cidade, estado /* seleciona coluna de tal lugar*/
FROM clientes /* De tal lugar*/
WHERE estado = 'SP' /*Na onde estado = x*/
/*ORDER BY nome Ordena pela coluna tal*/;

SELECT * FROM produtos;

SELECT DISTINCT cidade FROM clientes;

SELECT * FROM clientes LIMIT 2;

SELECT preco + 10 FROM produtos;

SELECT preco - 5 FROM produtos;

SELECT preco * 1.1 FROM produtos;

SELECT preco / 2 FROM produtos;

SELECT 10 % 3;

SELECT * FROM clientes 
WHERE cidade = 'São Paulo';

SELECT * FROM produtos
WHERE preco <> 132;

SELECT * FROM produtos 
WHERE preco > 300;

SELECT * FROM produtos 
WHERE estoque < 10;

SELECT * FROM produtos 
WHERE preco >= 1430;

SELECT * FROM produtos 
WHERE preco <= 132;

SELECT * FROM produtos 
WHERE nome = 'Notebook' AND
preco > 2000;

SELECT * FROM clientes 
WHERE estado = 'SP' OR 
estado = 'RJ';

SELECT * FROM clientes 
WHERE NOT cidade = 'São Paulo';

