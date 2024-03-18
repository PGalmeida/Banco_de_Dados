create database sistema_taxi_2;

use sistema_taxi_2;

create table cliente (
   idCliente 	integer not null auto_increment,  
   nome		 	varchar(80),
   primary key (idCliente)
);

create table cliente_particular (
   idParticular  integer not null,
   cpf			varchar(14),
   primary key (idParticular),
   foreign key (idParticular) references cliente (idCliente)
);

create table cliente_empresa (
   idEmpresa 	integer not null,
   cnpj			varchar(19), 
   primary key (idEmpresa),
   foreign key (idEmpresa) references cliente (idCliente)
);

create table taxi (
   placa 	varchar(7),
   marca	varchar(30),
   modelo	varchar(30),
   anofab	int,
   primary key (placa)
);

create table corrida (
   cliId		int not null, -- chave estrangeira
   placa		varchar(7),   -- chave estrangeira
   dataPedido	date,
   primary key (cliId,placa,dataPedido), -- chave primária composta
   foreign key (cliId) references cliente (idCliente),
   foreign key (placa) references taxi (placa)   
);

insert into cliente values
(null, 'Doriana'),
('2', 'DinoTech'),
(null, 'Asdrúbal'),
(null, 'Quincas'),
(null, 'Proj');

select * from cliente;

insert into cliente_particular values
('1', '567.387.387-44'),
('3', '448.754.253-44'),
('4', '576.456.123-55');

select * from cliente_particular;