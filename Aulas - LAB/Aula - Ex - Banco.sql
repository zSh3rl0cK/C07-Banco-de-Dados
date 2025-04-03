DROP DATABASE IF EXISTS Banco; 
CREATE DATABASE IF NOT EXISTS Banco;
USE Banco;

CREATE TABLE IF NOT EXISTS cliente(
	id INT NOT NULL PRIMARY KEY auto_increment,
	nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11),
    endereco varchar(50) not null
);

INSERT INTO cliente  (nome, cpf, endereco) VALUES ("Arséne", "777", "Barco");
INSERT INTO cliente  (nome, cpf, endereco) VALUES ("Thanato", "666", "Paraiso");

ALTER TABLE cliente ADD ano_nascimento INT;

update cliente SET ano_nascimento = 2000 where id='1';
update cliente SET ano_nascimento = 2020 where id='2';

select * from cliente;

delete from cliente where id = '1';

select * from cliente;