use aula01;
CREATE TABLE Aluno (
  idAluno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(255) BINARY  NULL  ,
  Sobrenome VARCHAR(255) BINARY  NULL  ,
  Email VARCHAR(255) BINARY  NULL    ,
PRIMARY KEY(idAluno));

CREATE TABLE Professor (
  idProfessor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(255)  NULL  ,
  Sobrenome VARCHAR(255)  NULL  ,
  Email VARCHAR(255)  NULL    ,
PRIMARY KEY(idProfessor));

CREATE TABLE Curso (
  idCurso INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Professor_idProfessor INTEGER UNSIGNED  NOT NULL  ,
  idProfessor INTEGER UNSIGNED  NULL  ,
  titulo VARCHAR(255)  NULL  ,
  descricacao VARCHAR(255)  NULL  ,
  categoria VARCHAR(255)  NULL  ,
  nivel_de_dificuldade VARCHAR(50)  NULL  ,
  popularidade VARCHAR(255)  NULL    ,
PRIMARY KEY(idCurso)  ,
INDEX Curso_FKIndex1(Professor_idProfessor));

CREATE TABLE Inscricao (
  idInscricao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Aluno_idAluno INTEGER UNSIGNED  NOT NULL  ,
  idAluno INTEGER UNSIGNED  NULL  ,
  idCurso INTEGER UNSIGNED  NULL  ,
  data_de_inscricao DATE  NULL  ,
  status_2 VARCHAR(50)  NULL    ,
PRIMARY KEY(idInscricao)  ,
INDEX Inscricao_FKIndex1(Aluno_idAluno));

