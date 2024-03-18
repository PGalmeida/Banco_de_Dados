create database Atividade_clinica;

use Atividade_clinica;

create table Medico(
id_Medico int primary key auto_increment not null,
CRM varchar(15) unique not null,
Nome varchar(50) not null,
Idade int check(Idade >= 23 and Idade <= 70),
Especialidade varchar(30) check(especialidade not like '%Ortopedia%')
);


create table Paciente(
id_Paciente int primary key auto_increment not null,
Nome varchar(50) not null,
CPF varchar(15) unique
);

create table Consulta(
id_Consulta int primary key auto_increment not null,
Data_Consulta date not null,
Hora_Consulta time not null,
id_Paciente int not null,
id_Medico int not null,
Descrição varchar(200),
foreign key(id_Paciente) references Paciente(id_Paciente),
foreign key(id_Medico) references Medico(Id_Medico)
);