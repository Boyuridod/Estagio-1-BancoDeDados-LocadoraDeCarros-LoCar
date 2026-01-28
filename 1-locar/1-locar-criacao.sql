CREATE DATABASE IF NOT EXISTS lo_car;

USE lo_car;

CREATE TABLE IF NOT EXISTS marcas(
	id_marca INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id_marca)
);

CREATE TABLE IF NOT EXISTS modelos(
	id_modelo INT NOT NULL AUTO_INCREMENT,
    marca_id INT NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    motor DECIMAL(2,1),
    transmissao VARCHAR(50),
    portas INT,
    porta_malas DECIMAL(10,2),
    
    PRIMARY KEY (id_modelo),
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

CREATE TABLE IF NOT EXISTS carros(
	id_carro INT NOT NULL AUTO_INCREMENT,
    modelo_id INT NOT NULL,
    valor_aluguel DECIMAL(10,2),
    
    PRIMARY KEY (id_carro),
    FOREIGN KEY (modelo_id) REFERENCES modelos(id_modelo)
);

CREATE TABLE IF NOT EXISTS clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_completo VARCHAR(500),
    cpf VARCHAR(12),
    telefone VARCHAR(20),
    endereco varchar(255),
    carro_id INT,
    data_aluguel DATE,
    data_devolucao DATE,
    
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (carro_id) REFERENCES carros(id_carro)
);