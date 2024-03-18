create database SistemaHorta;

use SistemaHorta;

create table planta(
plantaid   int  auto_increment primary key,
nome   char(20),
luzdiaria   double(4,3),
agua   double(4,3),
peso   double(4,3)   
);

create table funcionario(
funcid   int  auto_increment  primary key,
nome   char(20),
idade   int
);

create table canteiro(
canteiroid   int  auto_increment  primary key,
nome   char(20),
luzdiaria   double(4,3),
aguadiaria   double(4,3)
);

create table colhido(
colhidoid   int   auto_increment  primary key,
plantaid   int,
funcid   int,
canteiroid   int,
datacolhido date,
quantidade   int,
peso   double(4,3),
foreign key(plantaid) references planta (plantaid),
foreign key(funcid) references funcionario (funcid),
foreign key(canteiroid) references canteiro (canteiroid)
);

create table plantio(
plantioid   int   auto_increment  primary key,
plantaid   int,
funcid   int,
canteiroid   int,
dataplantio   date,
sementes   int,
foreign key(plantaid) references planta (plantaid),
foreign key(funcid) references funcionario (funcid),
foreign key(canteiroid) references canteiro (canteiroid)
);
