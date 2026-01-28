CREATE DATABASE IF NOT EXISTS loja_deletronicos;

USE loja_deletronicos;

CREATE TABLE IF NOT EXISTS marca(
	id INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS notebook(
	id INTEGER NOT NULL AUTO_INCREMENT,
	marca_id INTEGER,
    modelo VARCHAR(100),
    processador VARCHAR(100),
    ram INTEGER,
    memoria INTEGER,
    
    PRIMARY KEY (id),
    FOREIGN KEY (marca_id) REFERENCES marca(id)
);

ALTER TABLE notebook
ADD placa_de_video VARCHAR(100);

CREATE TABLE IF NOT EXISTS placa_video(
	id INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    marca_id INTEGER,
    
    PRIMARY KEY (id),
    FOREIGN KEY (marca_id) REFERENCES marca(id)
);

ALTER TABLE notebook
DROP COLUMN placa_de_video;

ALTER TABLE notebook
ADD placa_video_id INTEGER,
ADD CONSTRAINT placa_video_id
FOREIGN KEY (placa_video_id) REFERENCES placa_video(id);