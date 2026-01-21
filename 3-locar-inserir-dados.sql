USE lo_car;

INSERT INTO marcas (marca) VALUES
('Toyota'),
('Honda'),
('Volkswagen'),
('Chevrolet'),
('Ford'),
('Fiat'),
('Hyundai'),
('Renault'),
('Nissan'),
('BMW');

INSERT INTO modelos 
(marca_id, modelo, motor, transmissao, portas, porta_malas) VALUES
-- Toyota
(1, 'Corolla', 2.0, 'Automático', 4, 470),
(1, 'Hilux', 2.8, 'Automático', 4, 1000),

-- Honda
(2, 'Civic', 2.0, 'Automático', 4, 519),

-- Volkswagen
(3, 'Gol', 1.6, 'Manual', 4, 285),
(3, 'Polo', 1.0, 'Automático', 4, 300),
(3, 'Jetta', 2.0, 'Automático', 4, 510),

-- Chevrolet
(4, 'Onix', 1.0, 'Manual', 4, 275),
(4, 'Cruze', 1.4, 'Automático', 4, 440),

-- Ford
(5, 'Fiesta', 1.6, 'Manual', 4, 290),
(5, 'Focus', 2.0, 'Automático', 4, 375),

-- Fiat
(6, 'Uno', 1.0, 'Manual', 4, 280),
(6, 'Argo', 1.3, 'Automático', 4, 300),

-- Hyundai
(7, 'HB20', 1.0, 'Manual', 4, 300),
(7, 'Creta', 2.0, 'Automático', 4, 430),

-- Renault
(8, 'Kwid', 1.0, 'Manual', 4, 290),
(8, 'Duster', 1.6, 'Automático', 4, 475),

-- Nissan
(9, 'Versa', 1.6, 'Automático', 4, 460),
(9, 'Kicks', 1.6, 'Automático', 4, 432),

-- BMW
(10, '320i', 2.0, 'Automático', 4, 480),
(10, 'X5', 3.0, 'Automático', 4, 650);

INSERT INTO carros (modelo_id, valor_aluguel) VALUES
(1, 180.00),
(2, 350.00),
(3, 200.00),
(5, 160.00),
(6, 240.00),
(7, 140.00),
(10, 220.00),
(12, 150.00),
(14, 280.00),
(18, 190.00),
(19, 420.00),
(20, 600.00);

INSERT INTO clientes (nome_completo, cpf, telefone, endereco, carro_id, data_aluguel, data_devolucao) VALUES
('Yuri Duarte', '25525525510', '34991480903', 'Rua das Palmeiras, 120', 1, '2025-01-10', '2025-01-15'),
('Amélia Santos', '78512369841', '34999999999', 'Av. Brasil, 850', 3, '2025-01-12', '2025-01-18'),
('Zagreu Hades', '45879632145', '34988887777', 'Rua Olímpio Lima, 45', 6, '2025-01-20', '2025-01-22'),
('Adão Nélio', '96385274100', '34977776666', 'Rua Central, 300', 10, '2025-01-25', NULL);
