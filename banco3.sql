-- Criação do banco de dados
CREATE DATABASE exemplo_banco_de_dados;

-- Seleção do banco de dados
USE exemplo_banco_de_dados;

-- Criação da tabela de clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  descricao VARCHAR(50),
  valor DECIMAL(10, 2),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Criação do trigger
CREATE TRIGGER atualiza_valor_total
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
  DECLARE total DECIMAL(10, 2);
  SET total = (SELECT SUM(valor) FROM pedidos WHERE cliente_id = NEW.cliente_id);
  UPDATE clientes SET valor_total = total WHERE id = NEW.cliente_id;
END;
