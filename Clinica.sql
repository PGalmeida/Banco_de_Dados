create database Clinica;

use Clinica;

create table medico(
id_medico int not null auto_increment primary key,
CRM varchar(15) not null,
nome varchar(50) not null,
idade int check(idade >23 and idade <70),
especialidade varchar(30) check(especialidade <> 'Ortopedia')
);

create table paciente(
id_paciente int not null auto_increment primary key,
nome varchar(50) not null,
CPF char(11) unique
);

create table consulta(
id_consulta int not null auto_increment primary key,
data_consulta date not null,
hora_consulta time not null,
id_paciente int not null,
id_medico int not null,
descrição varchar(200)
);

alter table consulta add constraint
fk_consulta_paciente foreign key (id_paciente) references paciente (id_paciente);

alter table consulta add constraint
fk_consulta_medico foreign key (id_medico) references medico (id_medico);

insert into medico values
(null, '123456', 'Alessandra Martins Lopes', 30, 'Clínico Geral'),
(null,'654321', 'Adriana Seixas', 40, 'Clínico Geral'),
(null, '987654', 'Frenando Serqueira', 38, 'Cardiologista'),
(null, '456789', 'Rodrigo Carvalho', 40, 'Otorrino');

insert into paciente values
(null, 'Maria Aparecida Da Silva', '12345678925'),
(null, 'João Batista Rodrigues', '98765432107'),
(null, 'Cláudia Maria Venâncio', '65478912367');

insert into consulta values
(null, '2020-05-20', '15:30:00', 1, 2, 'Enxaqueca'),
(null, '2020-05-25', '08:30:00', 2, 3, 'Pressão alta'),
(null, '2020-05-29', '17:50:00', 3, 1, 'Colesterol alterado');