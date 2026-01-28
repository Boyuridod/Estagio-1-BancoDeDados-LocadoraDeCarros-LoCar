CREATE USER IF NOT EXISTS Yuri IDENTIFIED BY "locar";

CREATE USER IF NOT EXISTS Derwald IDENTIFIED BY "locar";

CREATE USER IF NOT EXISTS Ogata@localhost IDENTIFIED BY "locar";

CREATE USER IF NOT EXISTS Joel@127.0.0.1 IDENTIFIED BY "locar";

CREATE USER IF NOT EXISTS Sarah@yuri.com.br IDENTIFIED BY "locar";

SELECT * FROM mysql.user;

DROP USER IF EXISTS Joel@127.0.0.1;

SELECT * FROM mysql.user;

SET PASSWORD FOR Ogata@localhost = "japones";

SELECT * FROM mysql.user;

SHOW GRANTS FOR Yuri;

GRANT ALL ON *.* TO Yuri;
GRANT ALL ON lo_car.* TO Yuri;

SHOW GRANTS FOR Yuri;

SHOW GRANTS FOR Sarah@yuri.com.br;

GRANT SELECT, INSERT, UPDATE, DELETE ON mysql.* TO Yuri;
GRANT SELECT, INSERT, UPDATE, DELETE ON lo_car.* TO Yuri;

SHOW GRANTS FOR Sarah@yuri.com.br;

SHOW GRANTS FOR Derwald;

GRANT SELECT, INSERT, UPDATE, DELETE ON lo_car.* TO Derwald;

SHOW GRANTS FOR Derwald;

SHOW GRANTS FOR Ogata@localhost;

GRANT SELECT, DELETE ON lo_car.* TO Ogata@localhost;

SHOW GRANTS FOR Ogata@localhost;

REVOKE DELETE ON lo_car.* FROM Ogata@localhost;

SHOW GRANTS FOR Ogata@localhost;

SELECT * FROM mysql.user;