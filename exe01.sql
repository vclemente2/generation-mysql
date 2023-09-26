CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores(
	id integer auto_increment primary key,
    nome varchar(50) not null,
    idade integer not null,
    matricula varchar(10) not null unique,
    ativo boolean not null,
    email varchar(255) not null unique    
);

INSERT INTO colaboradores (nome, idade, matricula, ativo, email)
VALUES
("vinicius", 31, "0001", true, "email1@email.com"),
("maria", 28, "0002", true, "email2@email.com"),
("joão", 35, "0003", true, "email3@email.com"),
("ana", 29, "0004", true, "email4@email.com"),
("carlos", 40, "0005", true, "email5@email.com");

ALTER TABLE colaboradores ADD COLUMN (salario bigint not null);

UPDATE colaboradores SET salario = 2500 WHERE id = 1;
UPDATE colaboradores SET salario = 2000 WHERE id = 2;
UPDATE colaboradores SET salario = 1500 WHERE id = 3;
UPDATE colaboradores SET salario = 3000 WHERE id = 4;
UPDATE colaboradores SET salario = 1800 WHERE id = 5;

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET ativo = false where id = 3;
