USE lo_car;

SELECT * FROM marcas;

SELECT * FROM modelos;

SELECT 
	mo.id_modelo,
    mar.marca,
    mo.modelo,
    mo.motor,
    mo.transmissao,
    mo.portas,
    mo.porta_malas
FROM modelos mo
JOIN marcas mar ON mo.marca_id = mar.id_marca;

SELECT * FROM carros;

SELECT
	car.id_carro,
    mar.marca,
    mo.modelo,
    car.valor_aluguel
FROM carros car
JOIN modelos mo ON car.modelo_id = mo.id_modelo
JOIN marcas mar ON mo.marca_id = mar.id_marca;

SELECT * FROM clientes;

SELECT 
    c.nome_completo,
    ma.marca,
    m.modelo,
    ca.valor_aluguel,
    c.data_aluguel,
    c.data_devolucao
FROM clientes c
JOIN carros ca ON c.carro_id = ca.id_carro
JOIN modelos m ON ca.modelo_id = m.id_modelo
JOIN marcas ma ON m.marca_id = ma.id_marca;