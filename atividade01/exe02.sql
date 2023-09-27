CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE categorias(
	id bigint auto_increment primary key,
    nome varchar(255) not null unique
);

CREATE TABLE produtos(
	id bigint auto_increment primary key,
    nome varchar(255) not null unique,
    descricao text,
    valor decimal(8,2) not null,
    estoque bigint not null,
    categoria_id bigint not null,
    FOREIGN KEY (categoria_id) references categorias(id)
);

INSERT INTO categorias (nome)
VALUES
("Eletrônicos"),
("Roupas"),
("Alimentos");

INSERT INTO produtos (nome, descricao, valor, estoque, categoria_id)
VALUES
("Smartphone", "Um smartphone avançado", 599.99, 100, 1),
("Camiseta", "Uma camiseta de algodão", 19.99, 200, 2),
("Notebook", "Um notebook poderoso", 899.99, 50, 1),
("Chocolate", "Chocolate ao leite", 4.99, 300, 3),
("Tênis", "Um par de tênis esportivos", 49.99, 150, 2),
("Fones de Ouvido", "Fones de ouvido sem fio", 79.99, 120, 1),
("Calça Jeans", "Uma calça jeans de corte moderno", 29.99, 80, 2),
("Tablet", "Um tablet Android de 10 polegadas", 199.99, 30, 1);

SELECT p.*, c.nome AS categoria
FROM produtos p
INNER JOIN categorias c ON p.categoria_id = c.id
WHERE p.valor > 500;

SELECT p.*, c.nome AS categoria
FROM produtos p
INNER JOIN categorias c ON p.categoria_id = c.id
WHERE p.valor < 500;

SET SQL_SAFE_UPDATES = 0;
UPDATE produtos SET valor = valor * 1.1 WHERE valor <= 30;
