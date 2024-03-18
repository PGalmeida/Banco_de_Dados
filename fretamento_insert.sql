insert into cliente values 
(null, 'Pedro', '99968-3542', 'Av: paralelepipedo, 1549, Ipuã'),
(null, 'Livia', '99586-3278', 'Av: Retiro, 2593, Guaira'),
(null, 'Ricardo', '78596-5521', 'Av: Da Paixão, 2164, Ituverava');

select * from cliente;

insert into motorista values
(null, 'Geraldo', '99985-1256'),
(null, 'Andreia', '99458-6614'),
(null, 'Jose', '99852-2911'),
(null, 'Rafael', '99887-6655');

select * from motorista;

insert into veiculo values
(null, 'GFD-5214', 'Volkswagen', 'Preto e Vermelho', 2017, 1),
(null, 'PDO-2021', 'Mercedes-Benz', 'Branco e preto', 2021, 4),
(null, 'ADX-8541', 'Volkswagen', 'Amarelo e preto', 2015, 3),
(null, 'BBV-6311', 'Volkswagen', 'Laranja', 2019, 2),
(null, 'TRE-2541', 'Mercedes-Benz', 'Azul escuro', 2016, 1);

select * from veiculo;

insert into viagem values
(null, '2021-04-25', '12:50', '200,85', 'Ipuã', 'São Paulo', 1, 4),
(null, '2020-02-11', '03:20', '456,95', 'Ituverava', 'Rio de Janeiro', 3, 2),
(null, '2018-11-05', '21:30', '39,30', 'Guaira', 'Barretos', 2, 3),
(null, '2017-08-29', '23:50', '671,50', 'Ipuã', 'Bahia', 1, 1);

select * from viagem;