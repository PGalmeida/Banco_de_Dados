create database LojaEsporte;

use LojaEsporte;

create table marca(
idmarca   int(11)  auto_increment primary key,
dsmarca   varchar(50)  not null
);

create table unidade(
idunidade  int(11)  auto_increment  primary key,
dsunidade  varchar(50)  not null
);

create table categoria(
idcategoria  int(11)  auto_increment  primary key,
dscategoria  varchar(50)  not null
);

create table produto(
idproduto  int(11) auto_increment primary key,
dsproduto  varchar(100) not null,
preco_custo  decimal(12,2) not null,
preco_venda  decimal(12,2) not null,
qtde_estoque  decimal(12,2) not null,
qtde_minima  decimal(12,2) not null,
idcategoria  int  not null,
idmarca  int  not null,
idunidade  int  not null,
foreign key(idcategoria) references categoria (idcategoria),
foreign key(idmarca) references marca (idmarca),
foreign key(idunidade) references unidade (idunidade),
resumo varchar(250)
);

insert into marca values
(null,'Nike'),
(null,'Adidas'),
(null,'Rebook'),
(null,'Wilson'),
(null,'Speedy'),
(null,'Butterfly');     

 
select * from marca;


insert into categoria values
(null,'Confecção'),
(null,'Calçados'),
(null,'Bolas'),
(null,'Natação'),
(null,'Tênis'),
(null,'Tênis de Mesa');

select * from categoria;

insert into unidade values
(null,'Peça'),
(null,'Par'),
(null,'Gramas'),
(null,'Litro'),
(null,'Caixa'),
(null,'Cartela');

select * from unidade;

insert into produto values
(null,'Camisa Brasil' ,100.00 ,160.00 ,18 ,6 ,1 ,1 ,1 ,null),
(null,'Bola Adidas Copa 2010' ,150.00 ,240.00 ,2  ,3 ,3 ,2 ,1 ,null),
(null,'Camisa França II' ,110.00 ,170.00 ,1  ,2 ,1 ,2 ,1 ,null),
(null,'Bola de Tênis de Mesa Profissional c/6'   ,20.00  ,32.00  ,12 ,6 ,6 ,6 ,6 ,null),
(null,'Bola de Tênis c/3' ,11.00  ,18.00  ,4  ,6 ,5 ,4 ,5 ,null),
(null,'Raquete de Tênis Profissional' ,280.00 ,460.00 ,2  ,2 ,5 ,4 ,1 ,null);

select * from produto;