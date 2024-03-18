create database escola;

use escola;

create table cursos(
id_curso int auto_increment not null,
nome varchar(50) not null,
constraint pk_cursos primary key (id_curso)
);

create table turnos(
id_turno int auto_increment not null primary key,
nome varchar(50) not null
);

create table disciplinas(
id_disciplina int auto_increment not null primary key,
nome varchar(50) not null
);

create table estados(
id_estado int auto_increment not null primary key,
nome varchar(50) not null,
sigla varchar(02) not null
);

create table cidades(
id_cidade int auto_increment not null primary key,
id_estado int not null,
nome varchar(50) not null,
constraint FK_COM_ESTADOS foreign key(id_estado) references estados (id_estado) on update restrict on delete restrict
);

