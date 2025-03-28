CREATE DATABASE C207;
USE C207;

CREATE TABLE alunos(
	matricula INT,
	curso VARCHAR(20),
	nome VARCHAR(50),
	periodo INT,
	PRIMARY KEY (matricula, curso)
);

CREATE USER 'Professor' IDENTIFIED BY "111#JONAS"; #User 1
CREATE USER 'Monitor' IDENTIFIED BY "529#GES"; # user 2

GRANT ALL PRIVILEGES ON C207.* TO 'Professor';
GRANT CREATE, ALTER, DROP ON C207.* TO 'Monitor';

REVOKE INSERT, UPDATE, DELETE ON C207.* FROM 'Professor';
REVOKE CREATE, DROP ON C207.* FROM 'Monitor';

SHOW GRANTS FOR 'Monitor';
SHOW GRANTS FOR 'Professor';