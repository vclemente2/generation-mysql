CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes(
	id bigint auto_increment primary key,
    nome varchar(100) not null,
    turma varchar(10) not null,
    matricula varchar(10) not null unique,
    nota float
);

INSERT INTO estudantes (nome, turma, matricula, nota)
VALUES
("Ana Silva", "A", "E001", 8.5),
("João Santos", "B", "E002", 7.8),
("Maria Souza", "A", "E003", 9.2),
("Pedro Oliveira", "C", "E004", 6.5),
("Laura Martins", "B", "E005", 8.9),
("Carlos Ferreira", "A", "E006", 7.0),
("Mariana Rodrigues", "C", "E007", 9.5),
("Rafaela Lima", "A", "E008", 7.7);


SELECT * FROM estudantes WHERE nota > 7;
SELECT * FROM estudantes WHERE nota < 7;

UPDATE estudantes SET nota = 10 WHERE matricula = "E008";
SELECT * FROM estudantes;