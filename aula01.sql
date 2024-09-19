use aula01;

CREATE TABLE professor(
id_professor integer primary key auto_increment,
nome varchar(255),
idade int,
area varchar(255)
);

insert into professor(nome, idade, area) values('Anderson Silva', 44, 'TI');
select*from professor;

