-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS mercado_db;
USE mercado_db;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50),
    marca VARCHAR(50),
    preco VARCHAR(50),
    data_validade DATE,
    quantidade INT);
    
    
    INSERT INTO produtos (nome, tipo, marca, preco, data_validade, quantidade) VALUES
    ('Arroz', 'Grão', 'Tio João', '30.99', '2024-12-31', 100),
    ('Leite', 'Lácteo', 'Piracanjuba','4.59', '2024-10-15', 50),
    ('Pão', 'Panificação', 'Nutrella', '14.89', '2024-09-30', 200),
    ('Sabão', 'Limpeza', 'OMO', '3.99', '2025-02-28', 150),
	('Refrigerante', 'Bebida', 'Coca-Cola', '8.99', '2024-12-31', 100),
    ('Leite', 'Lácteo', 'Paracatu', '9.99', '2024-10-15', 50),
    ('Pão', 'Panificação', 'SevenBoys', '8.99', '2024-09-30', 200),
    ('Sabão', 'Limpeza', 'Minuano ', '6.99', '2025-02-28', 150);
    
    
    -- Selecionar todos os produtos:
    SELECT * FROM produtos;
    
    -- Selecionar produtos de uma marca específica:
    SELECT * FROM produtos WHERE marca = 'Coca-Cola';
    
    -- Atualizar o preço de um produto:
    UPDATE produtos SET preco = '15.99' WHERE nome = 'Arroz' AND marca = 'Tio João';
    
    -- Selecionar produtos com quantidade maior que 100:
    SELECT * FROM produtos WHERE quantidade > 100;
    
    -- Calcular o valor total de produtos em estoque:
	SELECT SUM(preco * quantidade) AS valor_total FROM produtos;

    -- Ordenar produtos por data de validade:
	SELECT * FROM produtos ORDER BY data_validade;
    
	-- Atualizar a quantidade de um produto específico:
	UPDATE produtos SET quantidade = 120 WHERE nome = 'Arroz' AND marca = 'Tio João';
    
	-- Excluir produtos vencidos:
	DELETE FROM produtos WHERE data_validade < CURDATE();

	-- Calcular a média de quantidade de produtos:
	SELECT AVG(quantidade) AS media_quantidade FROM produtos;
    
    -- Selecionar produtos de uma determinada categoria:
    SELECT * FROM produtos WHERE tipo = 'Lácteo';

	-- Selecionar produtos com preço menor que um determinado valor: 
    SELECT * FROM produtos WHERE preco < '4.99';
    
    -- Calcular o valor total de estoque por tipo de produto:
    SELECT tipo, SUM(preco * quantidade) AS valor_total_por_tipo FROM produtos GROUP BY tipo;
    
    -- Atualizar a marca de um produto específico:
	UPDATE produtos SET marca = 'NovaMarca' WHERE nome = 'Leite' AND marca = 'Piracanjuba';

	-- Contar o número de produtos por tipo:
	SELECT tipo, COUNT(*) AS quantidade_por_tipo FROM produtos GROUP BY tipo;

	-- Selecionar os produtos que vencem nos próximos 30 dias:
	SELECT * FROM produtos WHERE data_validade BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;

	-- Atualizar o validade de um produto:
    UPDATE produtos SET data_validade = '2024-02-28' WHERE nome = 'Arroz' AND marca = 'Tio João';
