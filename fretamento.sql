create database fretamento;

use fretamento;

create table motorista(
id int not null auto_increment primary key,
nome varchar(45) not null,
fone varchar(45) not null
);

create table cliente(
id int not null auto_increment primary key,
nome varchar(45) not null,
fone varchar(45) not null,
endereco Varchar(45) not null
);

create table veiculo(
id int not null auto_increment primary key,
placa varchar(45) not null,
modelo varchar(45),
cor varchar(45),
ano integer,
motorista_id int,
constraint FK_id_motorista foreign key(motorista_id) references motorista(id)
);

create table viagem(
id int not null auto_increment,
data_viagem date not null,
hora time not null,
valor float,
origem varchar(45) not null,
destino varchar(45) not null,
cliente_id int,
motorista_id int,
primary key(id),
constraint FK_id_cliente foreign key(cliente_id) references cliente(id),
constraint FK_viagem_id_motorista foreign key(motorista_id) references motorista(id)
);