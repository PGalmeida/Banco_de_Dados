create database bd_escola;

use bd_escola;

create table tb_aluno(
codigo_aluno int not null auto_increment primary key,
nome_aluno varchar(60)  not null,
ano_nascimento int,
email varchar(60),
sexo char(1) not null
);

create table tb_curso(
codigo_curso int not null auto_increment primary key,
nome_curso varchar(60) not null
);

create table tb_matricula(
id_matricula int not null auto_increment primary key,
codigo_aluno int,
codigo_curso int,
data_matricula date,
constraint FK_aluno foreign key (codigo_aluno) references tb_aluno(codigo_aluno),
constraint FK_curso foreign key (codigo_curso) references tb_curso(codigo_curso)
);

insert into tb_aluno values (null, "Josiel Jardim", 1974, "josiel@provaSQL.com.br", "M"),
(null, "Ana Maria", 1980, "ana@provaSQL.com.br", "F"),
(null, "João Pedro", 1979, "joao@provaSQL.com.br", "M");

select *from tb_aluno;

insert into tb_curso values (null, "Medicina"),
(null, "Arquitetura"),
(null, "Filosofia"),
(null, "Informática"),
(null, "Jornalismo");

select * from tb_curso;

insert into tb_aluno values (null, "Lívia Zago", 1998, "lívia@provaSQL.com.br", "F"),
(null, "Pedro Gomes", 1992, "pedro@provaSQL.com.br", "M");

insert into tb_matricula values (null, 5, 4, "2019-09-17");
insert into tb_matricula values (null, 4, 1, "2020-10-03"),
(null, 3, 2, "2018-04-22"),
(null, 2, 5, "2019-02-11"),
(null, 1, 3, "2017-08-29");

select * from tb_matricula;