DROP DATABASE IF EXISTS aula3;
CREATE DATABASE aula3;
USE aula3;

#COMANDO PARA DESATIVAR O SAFE MODE
SET SQL_SAFE_UPDATES = 0;

#QUESTAO 1
CREATE TABLE IF NOT EXISTS pessoa(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    cargo VARCHAR(45)
);

#RESPONDA A QUESTAO 1 AQUI

insert into pessoa () values (default, "Parvati", "BH", "combatente");
insert into pessoa () values (default, "Izanagi Picaro", "Tokyo", "suporte");
insert into pessoa () values (default, "Lilith", "Tokyo", "combatente");

select nome from  pessoa;
update pessoa set nome = "Metatron" where id="1";
delete from pessoa where id="3";

#QUESTAO 2
create table if not exists empresa(
    matricula int not null auto_increment primary key,
    nome varchar(45),
    cpf varchar(45),
    cargo varchar(45),
    nProjetos int
);
#RESPONDA A QUESTAO 2 AQUI

insert into empresa (nome, cpf, cargo, nProjetos) values ('Junior', '000.000.000-00', 'GP', 2);
insert into empresa (nome, cpf, cargo, nProjetos) values ('Maria', '111.111.111-11', 'Desenvolvedor', 3);
insert into empresa (nome, cpf, cargo, nProjetos) values ('Carlos', '222.222.222-22', 'Tester', 4);
insert into empresa (nome, cpf, cargo, nProjetos) values ('Julia', '333.333.333-33', 'Desenvolvedor', 5);

select count(*) as total_funcionarios from empresa where nProjetos >= 4;
select avg(nProjetos) as media_projetos from empresa where cargo <> 'GP';

select distinct cargo from empresa;
select nome, cpf, nProjetos from empresa where cargo = 'Desenvolvedor';


#QUESTAO 3
CREATE TABLE IF NOT EXISTS aluno(
	matricula INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    ano_nasc INT,
    curso VARCHAR(45)
);

#RESPONDA AS QUESTOES 3 E 4 AQUI
# A coluna a ser usada como ID deverá ser a matrícula, pois o seu valor é unico para cada aluno e funciona como identificacao no inatel

insert into aluno (nome, matricula, endereco, ano_nasc, curso) values ('Carlos', '333', 'Rua 0', '2003', 'GEB');
insert into aluno(nome, matricula, endereco, ano_nasc, curso) values('Janaina','123', 'Rua 1', '1998', 'GEB');
insert into aluno(nome, matricula, endereco, ano_nasc, curso) values('Luca' ,'124', 'Rua 2', '2004', 'GES');
insert into aluno(nome, matricula, endereco, ano_nasc, curso) values('Paula', '444', 'Rua 3', '2000', 'GEC');
 
insert into aluno (nome, matricula, endereco, ano_nasc, curso) values ('Pedro', '225','Rua 25','1999', 'GEA');
insert into aluno (nome, matricula, endereco, ano_nasc, curso) values ('Jander', '109','Rua 10','2000', 'GES'); 
insert into aluno (nome, matricula, endereco, ano_nasc, curso) values ('Laura', '302','Rua 3','2002', 'GEC'); 

select nome,matricula,curso from aluno where nome like 'Jan_______';
select nome,curso from aluno where nome like 'L_%a';
select nome, ano_nasc, curso from aluno where ano_nasc<=2000;
select * from aluno limit 4;
update aluno set endereco = 'republica' where curso = 'GES';
delete from aluno where curso = 'GES';
 
#Atencao: para a resposta da letra A, preencha a linha da tabela da resposta no comando 'CREATE TABLE' com 'NOT NULL PRIMARY KEY'
#Exemplo: caso você acredite que a chave primária deva ser o campo "ano_nasc" preencha na linha com 'ano_nasc INT NOT NULL PRIMARY KEY'
