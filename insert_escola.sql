/*Insert para tabela cursos*/
insert into cursos (nome) values ('Desenvlovimento de Sistema');
insert into cursos (nome) values ('Engenharia de Computação');
insert into cursos (nome) values ('Sistema de Informação');
insert into cursos (nome) values ('Programação Avançada');

/* Turnos */ 
insert into turnos (nome) values( 'Diurno');
insert into turnos (nome) values( 'Noturno');
insert into turnos (nome) values( 'Integral');

/* Disciplinas */ 
insert into disciplinas (nome) values('Banco de dados');
insert into disciplinas (nome) values('Desenvolvimento de Sistemas');
insert into disciplinas (nome) values('Hardware');
insert into disciplinas (nome) values('Desenvolvimento Digital');
insert into disciplinas (nome) values('Programação para Internet');
insert into disciplinas (nome) values('Técnicas de Programação');
insert into disciplinas (nome) values('Programação Web');
insert into disciplinas (nome) values('Aplicativos Informatizados');
insert into disciplinas (nome) values('Sistemas Operacionais');

/* Estado */
insert into estados (nome,sigla) values('São Paulo','SP') ;
insert into estados (nome,sigla) values('Mato Grosso','MT');
insert into estados (nome,sigla) values('Mato Grosso do Sul','MS');
insert into estados (nome,sigla) values('Paraná','PR');

/* Cidades */ 
insert into cidades (id_estado, nome) values(1,'Ribeirão Preto');
insert into cidades (id_estado, nome) values(1,'Ituverava');
insert into cidades (id_estado, nome) values(1,'Guará');
insert into cidades (id_estado, nome) values(1,'São Joaquim da Barra');
insert into cidades (id_estado, nome) values(1,'Orlândia');
insert into cidades (id_estado, nome) values(1,'Buritizal');
insert into cidades (id_estado, nome) values(2,'Cuiabá');
insert into cidades (id_estado, nome) values(2,'Colíder');
insert into cidades (id_estado, nome) values(3,'Cassilândia');
insert into cidades (id_estado, nome) values(3,'Paranaíba');
insert into cidades (id_estado, nome) values(3,'Aparecida do Taboado');
insert into cidades (id_estado, nome) values(4,'Maringá');
insert into cidades (id_estado, nome) values(4,'Curitiba');

