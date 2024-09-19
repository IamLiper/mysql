use aula01;
CREATE TABLE Membro_da_equipe (
  idMembro INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(255)  NULL  ,
  Sobrenome VARCHAR(255)  NULL  ,
  Cargo VARCHAR(255)  NULL    ,
PRIMARY KEY(idMembro));

CREATE TABLE Projeto (
  idProjeto INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome_do_projeto VARCHAR(255)  NULL    ,
PRIMARY KEY(idProjeto));

CREATE TABLE Tarefa (
  idTarefa INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Projeto_idProjeto INTEGER UNSIGNED  NOT NULL  ,
  Membro_da_equipe_idMembro INTEGER UNSIGNED  NOT NULL  ,
  Titulo VARCHAR(255)  NULL  ,
  Descricacao VARCHAR(255)  NULL  ,
  Prioridade VARCHAR(255)  NULL  ,
  Prazo DATE  NULL  ,
  Status_2 VARCHAR(55)  NULL    ,
PRIMARY KEY(idTarefa)  ,
INDEX Tarefa_FKIndex1(Membro_da_equipe_idMembro)  ,
INDEX Tarefa_FKIndex2(Projeto_idProjeto));
