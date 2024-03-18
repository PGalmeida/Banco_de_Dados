create database cadastro;

use cadastro;

create table cadpessoa(
id_pessoa integer auto_increment not null,
nome varchar(50) not null,
sobrenome varchar(50) not null,
cpf varchar(11) not null,
data_cadastro date not null,
constraint pk_id primary key(id_pessoa)
);

create table cadcliente(
id_cliente integer auto_increment not null,
id_pessoa integer not null,
endereco_entrega varchar(100) not null,
progama_pontos char(1) not null,
ativo char(1) not null default 'S',
constraint pk_cliente primary key(id_cliente),
constraint fk_pessoa foreign key (id_pessoa) references cadpessoa(id_pessoa)
);

create table cadfornecedor(
id_fornecedor integer auto_increment not null,
id_pessoa integer not null,
tipo_fornecedor smallint not null,
telefone_comercial varchar(20) not null,
ativo char(1) not null default 'S',
constraint pk_fornecedor primary key(id_fornecedor),
constraint fk_pessoa1 foreign key (id_pessoa) references cadpessoa(id_pessoa)
);