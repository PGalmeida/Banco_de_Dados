create database empresa;

use empresa;

create table departamento(
cod_dep integer not null,
descr varchar(30) not null default "Não Informado",
localiz varchar(30) not null,
constraint pk_dep primary key(cod_dep)
);

create table funcionario(
cod_func int not null primary key,
nome varchar(50) not null,
dt_nasc date,
cod_dep int,
constraint fk_func foreign key (cod_dep) references departamento(cod_dep)
);

create table funcao(
cod_funcao int not null primary key,
nome varchar(50) not null,
sal real not null
);

create table projeto(
cod_proj int not null primary key,
nome varchar(50) not null,
orcamento real not null,
dt_ini date not null,
dt_prev_term date not null,
constraint verifica_datas check (dt_ini<dt_prev_term)
);

create table trabalha(
cod_func int not null,
cod_proj int not null,
cod_funcao int not null,
dt_ent date not null,
dt_sai date,
constraint primary key(cod_func, cod_proj),
constraint fk_trabalha1 foreign key (cod_func) references funcionario(cod_func),
constraint fk_trabalha2 foreign key (cod_proj) references projeto(cod_proj),
constraint fk_trabalha3 foreign key (cod_funcao) references funcao(cod_funcao)
);

select * from funcionario;

alter table trabalha
drop dt_sai;

alter table funcionario
add telefone varchar(13) not null default 'Não Informado';

alter table funcao
modify sal decimal(12,2);

select * from departamento;

insert into departamento values (1, 'Análise', 'Sala B2-30');
insert into departamento(cod_dep, localiz) values (2,  'Sala A5-15');
insert into departamento(cod_dep, localiz) values (3, 'Sala C1-02');
insert into departamento(cod_dep, localiz) values (4, 'Sala B5-10');
insert into departamento(cod_dep, localiz) values (5, 'Sala D4-66');

select * from funcionario;

insert into funcionario(cod_func, cod_dep, nome) values (1, 1, 'Maria');
insert into funcionario(cod_func, nome, dt_nasc, cod_dep) values(2, 'Pedro', '1989.12.15',5 );
insert into funcionario(cod_func, nome, dt_nasc, cod_dep) values(3, 'Livia', '1995.09.22',4 );
insert into funcionario(cod_func, nome, dt_nasc, cod_dep) values(4, 'Rogerio', '1984.06.28',3 );
insert into funcionario(cod_func, nome, dt_nasc, cod_dep) values(5, 'Natalia', '1991.11.05',2 );

select * from projeto;

insert into projeto values (1, 'Imersão Digital', 2500.00, '2021.08.01', '2021.09.30');
insert into projeto values (2, 'Implantação de redes de telecomunicações', 12800.00, '2021.02.15', '2021.11.20');
insert into projeto values (3, 'Elétricos Prediais', 3000.00, '2020.11.06', '2021.04.09');
insert into projeto values (4, 'Protótipos abertos', 2050.00, '2021.02.28', '2021.04.04');
insert into projeto values (5, 'Boas práticas de fabricação', 4000.00, '2020.10.26', '2021.05.11');

select * from funcao;

insert into funcao values (1, 'Inclusão digital de Adultos', 1800.00);
insert into funcao values (2, 'Distribuição do sinal de internet', 2000.00);
insert into funcao values (3, 'Programar o software', 3200.00);
insert into funcao values (4, 'Inventos criativos e inovadores', 2600.00);
insert into funcao values (5, 'Condições higiênico-sanitárias', 2900.00);

alter table trabalha
add dt_sai date;

select * from trabalha;

insert into trabalha values (1, 1, 1, '2020.01.10', null);
insert into trabalha values (3, 4, 4, '2021.03.09', null);
insert into trabalha values (2, 2, 3, '2020.05.27', null);
insert into trabalha values (5, 5, 5, '2017.07.16', null);
insert into trabalha values (4, 3, 2, '2019.11.21', null);

