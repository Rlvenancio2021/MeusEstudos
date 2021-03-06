USE VENDAS_SUCOS;

CREATE TABLE TAB_IDENTITY (
ID INT AUTO_INCREMENT,
DESCRITOR VARCHAR(20),
PRIMARY KEY (ID) /* necessário ser chave primária */
);

SELECT * FROM TAB_IDENTITY;

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('Cliente1');

SELECT * FROM TAB_IDENTITY;

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('Cliente2');
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('Cliente3');
INSERT INTO TAB_IDENTITY (ID, DESCRITOR) VALUES (NULL, 'Cliente4');
INSERT INTO TAB_IDENTITY (ID, DESCRITOR) VALUES (NULL, 'Cliente5');

DELETE FROM TAB_IDENTITY WHERE ID = 2;

DELETE FROM TAB_IDENTITY WHERE ID = 5;

INSERT INTO TAB_IDENTITY (ID, DESCRITOR) VALUES (NULL, 'Cliente6');

INSERT INTO TAB_IDENTITY (ID, DESCRITOR) VALUES (100, 'Cliente7');

INSERT INTO TAB_IDENTITY (ID, DESCRITOR) VALUES (NULL, 'Cliente8');

SELECT * FROM TAB_IDENTITY;

/* TESTE */
USE VENDAS_SUCOS;

CREATE TABLE TAB_IDENTITY2 (ID INT AUTO_INCREMENT, DESCRITOR VARCHAR(20), PRIMARY KEY(ID));

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE1');

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE2');

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE3');

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE4');

DELETE FROM TAB_IDENTITY2 WHERE ID = 3;

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE6');

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE7');

DELETE FROM TAB_IDENTITY2 WHERE ID = 2;

SELECT * FROM TAB_IDENTITY2;