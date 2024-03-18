/*Insert para tabela Medico*/
insert into Medico (CRM, Nome, Idade, Especialidade) values ('45896412-3/BR','Adolfo',48,'Pediatria');
insert into Medico (CRM, Nome, Idade, Especialidade) values ('15796235-8/BR','Luísa',25,'Oftalmologia');
insert into Medico (CRM, Nome, Idade, Especialidade) values ('75465429-6/US','Joseph',30,'Cardiologia');
insert into Medico (CRM, Nome, Idade, Especialidade) values ('74125896-3/UK','George',57,'Psiquiatria');
insert into Medico (CRM, Nome, Idade, Especialidade) values ('50304871-4/BR','Maria Clara',35,'Ginecologia');
insert into Medico (CRM, Nome, Idade, Especialidade) values ('54963145-2/BR','João Paulo',41,'Optometria');


/*Insert para tabela Paciente*/
insert into Paciente (Nome, CPF) values ('Pedro','751.654.381-31');
insert into Paciente (Nome, CPF) values ('Lívia','954.399.471-52');
insert into Paciente (Nome, CPF) values ('Rafael','746.442.391-01');
insert into Paciente (Nome, CPF) values ('Roberta','271.667.357-81');
insert into Paciente (Nome, CPF) values ('Flávio','224.118.892-10');
insert into Paciente (Nome, CPF) values ('Andrea','146.497.963-17');
insert into Paciente (Nome, CPF) values ('Ricardo','582.471.693-64');

/*Insert para tabela Consulta*/
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/12/15','14:30','1','3','Fazer uma Ressonância Magnética (RM)');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/07/12','10:20','5','4','Tratar da ansiedade');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/08/14','12:00','3','1','acompanhamento do desenvolvimento da criança');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/06/21','15:40','2','5','acompanhamento da gestação');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/05/30','16:10','4','2','Realizar uma cirurgia');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/10/07','09:55','7','3','Fazer um Ecocardiograma');
insert into Consulta (Data_Consulta, Hora_Consulta, id_Paciente, id_Medico, Descrição) values ('2021/09/25','13:10','6','6','Fazer uma correção de grau no óculos');



/*Select das tabelas*/
select * from Medico;

select * from Paciente;

select * from Consulta;

