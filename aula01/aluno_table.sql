-- CRIANDO BASE DE DADOS
CREATE DATABASE aula01;
USE aula01;

/*CRIANDO TABELA*/
CREATE TABLE aluno(
id integer primary key,
nome varchar(255),
endereco varchar(255)
);

-- INSERINDO REGISTRO
INSERT INTO aluno(id,nome,endereco)values(1,'Luis Felipe','Rua A');
INSERT INTO aluno(id,nome,endereco)values(2,'Douglas','Rua B');

-- CONSULTANDO INFORMAÇÃO 
SELECT nome FROM aluno
where id=1;

-- ALTERANDO REGISTRO
update aluno
set nome='Felipe'
where id=1;
-- EXCLUINDO REGISTRO
DELETE from aluno
where id=2;


