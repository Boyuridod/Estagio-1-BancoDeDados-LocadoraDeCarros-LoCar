CREATE DATABASE IF NOT EXISTS lo_car;

USE lo_car;

CREATE TABLE IF NOT EXISTS marcas(
	id_marca INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(50),
    
    PRIMARY KEY (id_marca)
);

CREATE TABLE IF NOT EXISTS modelos(
	id_modelo INT NOT NULL AUTO_INCREMENT,
    marca_id INT,
    modelo VARCHAR(50),
    
    PRIMARY KEY (id_modelo),
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

CREATE TABLE IF NOT EXISTS carros(
	id_carro INT NOT NULL AUTO_INCREMENT,
    modelo_id INT,
    valor_aluguel DECIMAL(10,2),
    
    PRIMARY KEY (id_carro),
    FOREIGN KEY (modelo_id) REFERENCES modelos(id_modelo)
);

CREATE TABLE IF NOT EXISTS clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_completo VARCHAR(500),
    cpf VARCHAR(12),
    telefone VARCHAR(20),
    carro_id INT,
    
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (carro_id) REFERENCES carros(id_carro)
);

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

INSERT INTO modelos (marca_id, modelo) VALUES
(7, 'Creta'),
(7, 'HB20'),
(2, 'Civic'),
(1, 'Corolla'),
(1, 'Hilux'),
(10, 'M5'),
(10, '320i'),
(10, 'X5'),
(5, 'Focus'),
(5, 'Fiesta'),
(6, 'Uno'),
(6, 'Argo'),
(3, 'Gol'),
(3, 'Polo'),
(3, 'Jetta'),
(4, 'Onix'),
(4, 'Cruze'),
(8, 'Kwid'),
(8, 'Sandero'),
(8, 'Duster'),
(9, 'Sentra'),
(9, 'Versa'),
(9, 'Kicks');

INSERT INTO carros (modelo_id, valor_aluguel) VALUES
(3, 100.00),
(10, 100.00),
(11, 20.00),
(15, 250.00);

INSERT INTO clientes (nome_completo, cpf, telefone, carro_id) VALUES
("Yuri Duarte", "25525525510", "34991480903", 1),
("Amelia Santos", "785123698415", "34999999999", 4),
("Zagreu Hades", "785123698415", "34999999999", 3),
("Adao Nelio", "785123698415", "34999999999", 2);