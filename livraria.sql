
-- Criação das tabelas
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10,2),
    estoque INTEGER
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER,
    quantidade INTEGER,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de dados na tabela produtos
INSERT INTO produtos (id, nome, preco, estoque) VALUES (1, 'Livro A', 49.90, 20);
INSERT INTO produtos (id, nome, preco, estoque) VALUES (2, 'Livro B', 59.90, 15);
INSERT INTO produtos (id, nome, preco, estoque) VALUES (3, 'Livro C', 39.90, 30);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (1, 1, 2, '2025-07-08');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (2, 2, 1, '2025-07-08');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (3, 3, 3, '2025-07-08');
