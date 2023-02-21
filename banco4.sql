CREATE TABLE compras (
  id SERIAL PRIMARY KEY,
  data_compra DATE,
  nome_cliente VARCHAR(100),
  produto VARCHAR(100),
  valor NUMERIC(10, 2)
);


CREATE OR REPLACE PROCEDURE levantamento_diario_produtos_comprados
AS
BEGIN
    SELECT data_compra, COUNT(*) AS quantidade_produtos
    FROM compras
    GROUP BY data_compra;
END;


EXEC levantamento_diario_produtos_comprados;
