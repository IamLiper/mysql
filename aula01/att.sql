create database sist_academico;
use sist_academico;

CREATE TABLE Aluno (
  idAluno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  email VARCHAR(255)  NULL  ,
  data_nascimento DATE  NULL    ,
PRIMARY KEY(idAluno));

insert into Aluno(nome, email, data_nascimento)
values
('Luís Felipe', 'qwe@gmail.com', '2006-02-26'),
('Leonardo', 'lok@gmail.com', '2000-10-26'),
('Danilo', 'asd@gmail.com', '2001-09-11'),
('Mateus', 'cvb@gmail.com', '1999-03-01'),
('Douglas', 'abc@gmail.com', '2007-06-17');

select * from Aluno;

CREATE TABLE Curso (
  idCurso INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  duracao VARCHAR(4)  NULL    ,
PRIMARY KEY(idCurso));

insert into Curso(nome, duracao)
values
('Desenvolvimento de sistemas', '1200'),
('Logistica', '1000'),
('Robôtica', '900'),
('Adiministração', '1200'),
('Rede de computadores', '1000');

select * from Curso;

CREATE TABLE Disciplina (
  idDisciplina INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Professor_idProfessor INTEGER UNSIGNED  NOT NULL  ,
  Curso_idCurso INTEGER UNSIGNED  NOT NULL  ,
  nome VARCHAR(255)  NULL    ,
PRIMARY KEY(idDisciplina)  ,
INDEX Disciplina_FKIndex1(Curso_idCurso)  ,
INDEX Disciplina_FKIndex2(Professor_idProfessor));

insert into Disciplina()

select * from Disciplina;

CREATE TABLE Professor (
  idProfessor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  email VARCHAR(255)  NULL  ,
  especialidade VARCHAR(255)  NULL    ,
PRIMARY KEY(idProfessor));

insert into Professor(nome, email, especialidade)
values
('João', '', ''),
('Paulo', '', ''),
('joaquin', '', ''),
('Steve', '', ''),
('Zenitê', '', '');

select * from Professor;

CREATE TABLE Turma (
  idTurma INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Disciplina_idDisciplina INTEGER UNSIGNED  NOT NULL  ,
  nome VARCHAR(255)  NULL  ,
  semestre INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idTurma)  ,
INDEX Turma_FKIndex1(Disciplina_idDisciplina));



CREATE TABLE Matrícula (
  idMatricula INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Turma_idTurma INTEGER UNSIGNED  NOT NULL  ,
  Aluno_idAluno INTEGER UNSIGNED  NOT NULL  ,
  data_matricula DATE  NULL    ,
PRIMARY KEY(idMatricula)  ,
INDEX Matrícula_FKIndex1(Aluno_idAluno)  ,
INDEX Matrícula_FKIndex2(Turma_idTurma));
