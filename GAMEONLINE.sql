CREATE DATABASE db_generation_gameonline;
USE db_generation_gameonline;

CREATE TABLE tb_classes (
    id_class INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ataque INT ,
    defesa INT,
    nivel INT ,
    id_class INT,
    FOREIGN KEY (id_class) REFERENCES tb_classes(id_class)
);

INSERT INTO tb_classes (nome, descricao) VALUES
("Knight", "Especialista em combate corpo a corpo"),
("Sorcerer", "Usa magia para atacar e se defender"),
("Druid", "Combina habilidades de combate e cura"),
("Paladin", "Especialista em ataques a distancia"),
("Assassin", "Especialista em ataques rápidos e furtivos");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, ataque, defesa, nivel, id_class) VALUES
("Tanker", 2500, 1500, 10, 1),
("Paladin", 3000, 1200, 15, 2),
("Curandeiro", 2200, 1000, 12, 3),
("Bruxo", 2100, 1800, 14, 1),
("Atirador", 1900, 1600, 13, 4),
("Assassino", 1700, 900, 8, 5),
("Guerreiro", 2300, 1700, 11, 1),
("Mago", 3800, 1400, 20, 2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_class = c.id_class;

SELECT p.*, c.nome AS classe_nome, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_class = c.id_class
WHERE c.nome = "sorcerer";


