DROP DATABASE IF EXISTS AV1;
CREATE DATABASE AV1;
USE AV1;

#COMANDO PARA DESATIVAR O SAFE MODE
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE IF NOT EXISTS Ninja (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    dinheiro INT NOT NULL,
    tipoChakra VARCHAR(50) NOT NULL,
    qtdChakra INT NOT NULL
);

# Responda aqui a letra A
INSERT INTO Ninja () VALUES (default, 'Naruto','13','Genin','0','Vento','600');
INSERT INTO Ninja () VALUES (default, 'Sasuke','14','Chunin','500','Raio','400');
INSERT INTO Ninja () VALUES (default, 'Sakura','12','Genin','150','Terra','500');
INSERT INTO Ninja () VALUES (default, 'Gaara','15','Chunin','400','Areia','550');
INSERT INTO Ninja () VALUES (default, 'Kakashi','28','Jonin','1000','Raio','200');
INSERT INTO Ninja () VALUES (default, 'Minato','35','Hokage','5000','Vento','300');

UPDATE Ninja SET idade = '14' where nome = 'naruto';
SELECT * FROM Ninja WHERE Titulo = 'Genin';
DELETE FROM Ninja WHERE qtdChakra = '550';
SELECT titulo FROM Ninja WHERE tipoChakra = 'Vento';
SELECT max(idade) FROM Ninja;
UPDATE Ninja SET titulo = 'Chunin' WHERE nome = 'Naruto' OR nome = 'Sakura';
SELECT nome FROM Ninja WHERE nome like 'Sa____';
SELECT count(*) as total_ninjas FROM Ninja WHERE dinheiro<= '1000';

# Responda aqui a letra B

# Responda aqui a letra C

# Responda aqui a letra D

# Responda aqui a letra E

# Responda aqui a letra F

# Responda aqui a letra G

# Responda aqui a letra H

# Responda aqui a letra I