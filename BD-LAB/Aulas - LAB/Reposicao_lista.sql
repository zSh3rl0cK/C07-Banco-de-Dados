CREATE DATABASE IF NOT exists C207;
USE C207;

create table if not exists Heroi (
	idHeroi int NOT null primary key auto_increment,
    nome varchar(45) not null,
    endereco varchar(45),
    nascimento date,
    habilidade varchar(45),
    sexo char,
    email varchar(45)
);

create table if not exists Missao(
	idMissao int primary key not null auto_increment,
    nome varchar(45) not null,
	data_ date not null,
    local_ varchar(45),
	duracao int
);

create table if not exists Heroi_has_Missao(
	Heroi_idHeroi int,
    Missao_idMissao int,
    CONSTRAINT fk_Heroi_has_Missao_Missao FOREIGN KEY (Missao_idMissao) REFERENCES Missao(idMissao) ON DELETE CASCADE
);

create table if not exists Vilao(
	idVilao int primary key not null auto_increment,
    nome varchar(45) not null,
    num_crimes int not null,
    Vilao_idVilao int,
    FOREIGN KEY (Vilao_idVilao) REFERENCES Vilao(idVilao) ON DELETE SET NULL
);

-- Inserindo Heróis
INSERT INTO Heroi (nome, endereco, nascimento, habilidade, sexo, email) VALUES ('Makoto Yuki', 'Iwatodai Dorm', '1992-06-01', 'Persona Summoning', 'M', 'makoto.yuki@sees.jp');
INSERT INTO Heroi (nome, endereco, nascimento, habilidade, sexo, email) VALUES ('Minato Arisato', 'Iwatodai Dorm', '1992-06-01', 'Persona Summoning', 'M', 'minato.arisato@sees.jp');
INSERT INTO Heroi (nome, endereco, nascimento, habilidade, sexo, email) VALUES ('Yu Narukami', 'Inaba', '1994-01-04', 'Persona Summoning', 'M', 'yu.narukami@yasogami.jp');
INSERT INTO Heroi (nome, endereco, nascimento, habilidade, sexo, email) VALUES ('Chie Satonaka', 'Inaba', '1994-03-14', 'Martial Arts', 'F', 'chie.satonaka@yasogami.jp');
INSERT INTO Heroi (nome, endereco, nascimento, habilidade, sexo, email) VALUES ('Yosuke Hanamura', 'Inaba', '1994-06-22', 'Dual Blades', 'M', 'yosuke.hanamura@junes.jp');

-- Inserindo Vilões
INSERT INTO Vilao (nome, num_crimes) VALUES ('Takaya Sakaki', 10);
INSERT INTO Vilao (nome, num_crimes) VALUES ('Jin Shirato', 8);
INSERT INTO Vilao (nome, num_crimes) VALUES ('Adachi Tohru', 12);
INSERT INTO Vilao (nome, num_crimes) VALUES ('Mitsuo Kubo', 5);
INSERT INTO Vilao (nome, num_crimes) VALUES ('Nyx Avatar', 99);

-- Inserindo Missões
INSERT INTO Missao (nome, data_, local_, duracao) VALUES ('Busca', '2025-04-05', 'Tartarus', 3);
INSERT INTO Missao (nome,data_, local_, duracao) VALUES ('Busca','2025-04-06', 'TV World', 2);
INSERT INTO Missao (nome,data_, local_, duracao) VALUES ('Busca','2025-04-07', 'Midnight Channel', 4);
INSERT INTO Missao (nome,data_, local_, duracao) VALUES ('Busca','2025-04-08', 'Tartarus', 3);
INSERT INTO Missao (nome,data_, local_, duracao) VALUES ('Busca','2025-04-09', 'TV World', 2);

-- Associando Missões a Heróis (3 missões por herói)
INSERT INTO Heroi_has_Missao (Heroi_idHeroi, Missao_idMissao) VALUES (1, 1), (1, 2), (1, 3);
INSERT INTO Heroi_has_Missao (Heroi_idHeroi, Missao_idMissao) VALUES (2, 2), (2, 3), (2, 4);
INSERT INTO Heroi_has_Missao (Heroi_idHeroi, Missao_idMissao) VALUES (3, 3), (3, 4), (3, 5);
INSERT INTO Heroi_has_Missao (Heroi_idHeroi, Missao_idMissao) VALUES (4, 1), (4, 4), (4, 5);
INSERT INTO Heroi_has_Missao (Heroi_idHeroi, Missao_idMissao) VALUES (5, 2), (5, 3), (5, 5);

## Ex4 
select H.nome, M.nome, V.nome FROM Heroi AS H JOIN Heroi_has_Missao AS HM ON H.idHeroi = HM.Heroi_idHeroi JOIN Missao AS M ON M.idMissao = Missao_idMissao JOIN Vilao AS V ON V.idVilao = Missao_idMissao ORDER BY H.nome;

## Ex 5 
select H.nome, sum(M.duracao) AS duracaoTotal, count(HM.missao_idMissao) AS numMissoes FROM Heroi AS H JOIN Heroi_has_Missao AS HM ON H.idHeroi = HM.heroi_idHeroi JOIN Missao AS M ON M.idMissao = Missao_idMissao GROUP BY H.nome ORDER BY H.nome;

## Ex 6
select H.nome, M.nome, V.num_crimes FROM Heroi AS H JOIN Heroi_has_Missao AS HM ON H.idHeroi = HM.Heroi_idHeroi JOIN Missao AS M ON M.idMissao = Missao_idMissao JOIN Vilao AS V ON V.idVilao = Missao_idMissao ORDER BY M.nome;
