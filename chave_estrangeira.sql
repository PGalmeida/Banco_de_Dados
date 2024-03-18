create database chave_estrangeira;

use chave_estrangeira;

create table Cliente(
idCliente int primary key,
Nome varchar(50)
);

create table Pedido(
idPedido int primary key,
dtEmissao date,
idCliente int,
constraint FK_Pedido_Cliente foreign key(idCliente) references Cliente(idCliente)
);

create table Item(
idItem int primary key,
Descricao varchar(100)
);

create table Item_Pedido(
idPedido int,
idItem int,
VrUnit decimal(12,2),
Qtde decimal(12,2),
primary key(idPedido, iditem),
constraint FK_pedido foreign key(idPedido) references Pedido(idPedido),
constraint FK_item foreign key(idItem) references Item(idItem)
);

