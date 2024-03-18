/* Update nas tabelas*/
/*1*/
update medico set idade = 40 where id_medico = 1;

/*2*/
update medico set especialidade = 'Cardiologista' where id_medico = 2;

/*3*/
update paciente set nome = 'Maria Antonia silva' where id_paciente = 1;

/*4*/
alter table paciente add cidade varchar(50) default 'São Joaquim da Barra';

/*5*/
update consulta set data_consulta = '2020-08-15' where id_consulta = 1;

/*6*/
update consulta set descrição = 'Aferida a pressão nos dois braços e medida a taxa de glicemia' where id_consulta = 2;

/*Select nas tabelas*/
/*7*/
select nome, idade, especialidade from medico;

/*8*/
select nome, cpf, cidade from paciente where nome like 'Maria%';

/*9*/
select * from consulta where data_consulta = '2020-05-25';

/*10*/
select * from consulta where id_medico = 1;