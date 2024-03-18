create database grupopesquisa;

use grupopesquisa;

create table grupopesquisa(
id int not null auto_increment primary key,
nome varchar(128) not null,
areapesquisa varchar(32) not null
);

create table unidadeacademica(
id int not null auto_increment primary key,
nome varchar(64) not null,
areaacademica varchar(64) not null
);

create table pessoa(
id int not null auto_increment primary key,
nome varchar(128) not null,
datanascimento date not null,
cpf char(11) unique not null,
email varchar(128) not null,
grupopesquisa_id int, 
constraint grupopesquisa_pessoa foreign key 
(grupopesquisa_id) references grupopesquisa(id)
);

create table docente(
id int not null auto_increment primary key,
siape varchar(45) not null,
dataadmissao date not null,
pessoa_id int not null,
unidadeacademica_id int not null,
constraint pessoa_docente foreign key
(pessoa_id) references pessoa(id),
constraint unidadeacademica_docente foreign key
(unidadeacademica_id) references unidadeacademica(id)
);