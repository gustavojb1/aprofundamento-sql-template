-- Active: 1673968851622@@127.0.0.1@3306

-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela

DROP TABLE pokemons;

-- Criar tabela

CREATE TABLE
    pokemons (
        id INTEGER PRIMARY KEY UNIQUE NOT NULL,
        name TEXT UNIQUE NOT NULL,
        type TEXT NOT NULL,
        hp INTEGER NOT NULL,
        attack INTEGER NOT NULL,
        defense INTEGER NOT NULL,
        special_attack INTEGER NOT NULL,
        special_defense INTEGER NOT NULL,
        speed INTEGER NOT NULL
    );

-- Popular tabela

INSERT INTO
    pokemons (
        id,
        name,
        type,
        hp,
        attack,
        defense,
        special_attack,
        special_defense,
        speed
    )
VALUES (
        1,
        "bulbasaur",
        "grass",
        45,
        49,
        49,
        65,
        65,
        45
    ), (
        2,
        "ivysaur",
        "grass",
        60,
        62,
        63,
        80,
        80,
        60
    ), (
        3,
        "venusaur",
        "grass",
        80,
        82,
        83,
        100,
        100,
        80
    ), (
        4,
        "charmander",
        "fire",
        39,
        52,
        43,
        60,
        50,
        65
    ), (
        5,
        "charmeleon",
        "fire",
        58,
        64,
        58,
        80,
        65,
        80
    ), (
        6,
        "charizard",
        "fire",
        78,
        84,
        78,
        109,
        85,
        100
    ), (
        7,
        "squirtle",
        "water",
        44,
        48,
        65,
        50,
        64,
        43
    ), (
        8,
        "wartortle",
        "water",
        59,
        63,
        80,
        65,
        80,
        58
    ), (
        9,
        "blastoise",
        "water",
        79,
        83,
        100,
        85,
        105,
        78
    );

-- Buscar todos os pokemons

SELECT * FROM pokemons;

-- Práticas

SELECT * FROM pokemons WHERE speed >60;

SELECT * FROM pokemons WHERE attack >=60 and special_attack>=60;

SELECT * FROM pokemons WHERE name like "%saur";

SELECT AVG(hp) FROM pokemons;

SELECT COUNT(*) FROM pokemons;

SELECT COUNT(*) AS quantityOfPokemons FROM pokemons;

SELECT AVG(hp) AS averageOfHp FROM pokemons;

--PRATICA 3

--BUSQUE TODOS POKEMONS E ORDENE PELA COLUNA DEFENSE EM ORDEM DECRESCENTE

SELECT * FROM pokemons ORDER BY defense DESC;

--BUSQUE O NÚMERO DE POKEMONS CADASTRADOS, MAS AGORA AGRUPE O RESULTADO BASEADO NA COLUNA TYPE

SELECT
    COUNT(*) AS quantityOfPokemons,
    type
FROM pokemons
GROUP BY type;

--busque por todos pokemons, limite o resultado a 3 linhas iniciando a partir da quinta linha

SELECT * FROM pokemons LIMIT 3 OFFSET 4;

--Filtrar apenas tipos de grass ou fire

--ORDEM CRESCENTE BASEADO NA COLUNA ATTACK

--RESULTADO DAS LINHAS LIMITADO A 3 E INICIANDO A PARTIR DA TERCEIRA LINHA

select *
from pokemons
WHERE
    "type" = "fire"
    or "type" = "grass"
ORDER BY attack ASC
LIMIT 3
OFFSET 2;

SELECT * FROM pokemons;