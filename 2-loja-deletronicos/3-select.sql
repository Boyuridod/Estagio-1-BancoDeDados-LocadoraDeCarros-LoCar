USE loja_deletronicos;

SELECT * FROM notebook;

SELECT * FROM placa_video;

SELECT * FROM marca;



SELECT * FROM placa_video JOIN marca;

SELECT * FROM placa_video INNER JOIN marca;

SELECT * FROM placa_video JOIN marca ON placa_video.marca_id = marca.id;

SELECT * FROM placa_video INNER JOIN marca ON placa_video.marca_id = marca.id;



-- SELECT * FROM placa_video LEFT JOIN marca;

SELECT * FROM placa_video LEFT JOIN marca ON placa_video.marca_id = marca.id;

SELECT * FROM marca LEFT JOIN placa_video ON marca.id = placa_video.marca_id;



SELECT * FROM placa_video RIGHT JOIN marca ON placa_video.marca_id = marca.id;

SELECT * FROM marca RIGHT JOIN placa_video ON marca.id = placa_video.marca_id;



SELECT * FROM placa_video FULL JOIN marca;

-- SELECT * FROM placa_video FULL JOIN marca ON placa_video.marca_id = marca.id;

-- SELECT * FROM marca FULL JOIN placa_video ON marca.id = placa_video.marca_id;



SELECT marca_id FROM notebook
UNION
SELECT marca_id FROM placa_video;

SELECT marca_id, marca.nome FROM notebook JOIN marca ON notebook.marca_id = marca.id
UNION
SELECT marca_id, marca.nome FROM placa_video JOIN marca ON placa_video.marca_id = marca.id;


SELECT marca_id FROM notebook
UNION ALL
SELECT marca_id FROM placa_video;

SELECT marca_id, marca.nome FROM notebook JOIN marca ON notebook.marca_id = marca.id
UNION ALL
SELECT marca_id, marca.nome FROM placa_video JOIN marca ON placa_video.marca_id = marca.id;



INSERT INTO placa_video (nome, marca_id)
VALUES
	("Geforce MX110", (SELECT id FROM marca WHERE nome = "NVIDIA")),
    ("Radeon RX550", (SELECT id FROM marca WHERE nome = "AMD")),
    ("GTX 1080TI", (SELECT id FROM marca WHERE nome = "NVIDIA")),
    ("GTX 2060TI", (SELECT id FROM marca WHERE nome = "NVIDIA"));
    
SELECT * FROM placa_video;

SELECT * FROM placa_video INNER JOIN marca
ON placa_video.marca_id = marca.id;

SELECT * FROM placa_video INNER JOIN marca
ON placa_video.marca_id = marca.id
GROUP BY placa_video.nome;

DELETE FROM placa_video WHERE id > 4;

SELECT * FROM placa_video;



SELECT * FROM placa_video INNER JOIN marca
ON placa_video.marca_id = marca.id
ORDER BY placa_video.nome;

SELECT * FROM placa_video INNER JOIN marca
ON placa_video.marca_id = marca.id
GROUP BY placa_video.nome
ORDER BY placa_video.nome;
