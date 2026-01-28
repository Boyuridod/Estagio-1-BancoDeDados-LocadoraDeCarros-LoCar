USE loja_deletronicos;

INSERT INTO marca (nome)
VALUES
	("NVIDIA"),
	("AMD"),
	("Samsung"),
	("Lenovo"),
	("Acer"),
	("ASUS");
    
INSERT INTO placa_video (nome, marca_id)
VALUES
	("Geforce MX110", (SELECT id FROM marca WHERE nome = "NVIDIA")),
    ("Radeon RX550", (SELECT id FROM marca WHERE nome = "AMD")),
    ("GTX 1080TI", (SELECT id FROM marca WHERE nome = "NVIDIA")),
    ("GTX 2060TI", (SELECT id FROM marca WHERE nome = "NVIDIA"));
    
INSERT INTO notebook (marca_id, modelo, processador, ram, memoria, placa_video_id)
VALUES
	((SELECT id FROM marca WHERE nome = "Samsung"), "Book X50", "Intelcore i7 10Th", 8, 500,
    (SELECT id FROM placa_video WHERE nome = "Geforce MX110")),
    ((SELECT id FROM marca WHERE nome = "Lenovo"), "Book X50", "Intelcore i5 11Th", 8, 500, null),
    ((SELECT id FROM marca WHERE nome = "Samsung"), "Book X55", "Intelcore i7 10Th", 16, 1000,
    (SELECT id FROM placa_video WHERE nome = "Geforce MX110")),
    ((SELECT id FROM marca WHERE nome = "Acer"), "Nitro 5", "Intelcore i5 11Th", 16, 1500,
    (SELECT id FROM placa_video WHERE nome = "GTX 2060TI"));