CREATE VIEW valor_pagar AS
SELECT 
	c.id_cliente,
    c.nome_completo,
    ma.marca,
    m.modelo,
    ca.valor_aluguel,
    c.data_aluguel,
    c.data_devolucao,
    (c.data_devolucao - c.data_aluguel) * ca.valor_aluguel AS total_pagar
FROM clientes c
JOIN carros ca ON c.carro_id = ca.id_carro
JOIN modelos m ON ca.modelo_id = m.id_modelo
JOIN marcas ma ON m.marca_id = ma.id_marca;