-- Criando a base de dados
CREATE DATABASE minha_base_de_dados;

-- Usando a base de dados
USE minha_base_de_dados;

-- Criando a tabela "clientes"
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50),
  telefone VARCHAR(20)
);

-- Inserindo dados na tabela "clientes"
INSERT INTO clientes (id, nome, email, telefone)
VALUES (1, 'João', 'joao@email.com', '123456789'),
       (2, 'Maria', 'maria@email.com', '987654321'),
       (3, 'Pedro', 'pedro@email.com', '456789123');

-- Criando a tabela "pedidos"
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  data_pedido DATE,
  valor FLOAT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserindo dados na tabela "pedidos"
INSERT INTO pedidos (id, cliente_id, data_pedido, valor)
VALUES (1, 1, '2022-01-01', 100.50),
       (2, 1, '2022-02-01', 200.00),
       (3, 2, '2022-02-15', 150.75);

-- Realizando uma consulta usando INNER JOIN para juntar as tabelas "clientes" e "pedidos"
SELECT clientes.nome, pedidos.data_pedido, pedidos.valor
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
