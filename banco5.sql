CREATE FUNCTION somar_clientes_cadastrados(data date)
RETURNS integer
AS $$
BEGIN
  RETURN (SELECT COUNT(*) FROM cadastro_clientes WHERE data_cadastro = data);
END;
$$
LANGUAGE plpgsql;


SELECT somar_clientes_cadastrados('2022-02-18');
