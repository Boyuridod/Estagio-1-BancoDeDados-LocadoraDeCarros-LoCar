CREATE DATABASE IF NOT EXISTS safe_account;

CREATE TABLE IF NOT EXISTS acc(
	id INTEGER NOT NULL AUTO_INCREMENT,
    owner_name VARCHAR(255),
    balance NUMERIC(10, 2),

	PRIMARY KEY (id)
);

INSERT INTO acc (owner_name, balance) VALUES
	("Josiane Cunha", 78500),
	("Autopeças Maracanã", 698322);