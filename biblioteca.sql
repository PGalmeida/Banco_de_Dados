create database Biblioteca_2;

use Biblioteca_2;

create table Usuario(
Matrícula    integer  not null  primary key  auto_increment,
Nome         varchar(50)  not null,
Email        varchar(50)  not null,
Endereco     varchar(30),
Telefone     varchar(15)
);

CREATE TABLE Emprestimo(
    Codigo	     	INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    DataHora	      	DATETIME NOT NULL,
    MatriculaUsuario	INTEGER NOT NULL,
    DataDevo		DATE NOT NULL
);

CREATE TABLE Sessao(
    CodigoSessao	INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Descricao		VARCHAR(35),
    Localizacao	VARCHAR(30)
);

CREATE TABLE Livro(
   CodigoLivro		INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
   Titulo				VARCHAR(20) NOT NULL,
   Autor				VARCHAR(50) NOT NULL,
   CodSessao		INTEGER NOT NULL
);

CREATE TABLE LivroEmprestimo(
    CodLivro				INTEGER,
    CodEmprest				INTEGER,
    PRIMARY KEY(CodLivro,CodEmprest)
);

ALTER TABLE LivroEmprestimo ADD CONSTRAINT FK_LivroEmprestimo_Livro
FOREIGN KEY (CodLivro) REFERENCES Livro (CodigoLivro);

ALTER TABLE LivroEmprestimo ADD CONSTRAINT FK_LivroEmprestimo_Emprestimo
FOREIGN KEY (CodEmprest) REFERENCES Emprestimo (Codigo);

ALTER TABLE Emprestimo ADD CONSTRAINT FK_Emprestimo_Usario
FOREIGN KEY (MatriculaUsuario) REFERENCES Usuario (Matricula);

ALTER TABLE Livro ADD CONSTRAINT FK_Livro_Sessao
FOREIGN KEY (CodSessao) REFERENCES Sessao (CodigoSessao);

INSERT INTO Usuario VALUES(null,'Fulano','fulano@gmail.com','Rua:Maria das Dores, N:25','16-97521-2342'),
(null,'Jhonnathan','JCH@XBOX.LIVE.COM','Rua:One Microsoft Way, N:69','32-32154-1253'),
(null,'Andréia','Andreia123@ETEC.SP.GOV.BR','Rua: XV, N:1235','16-99832-2134');

INSERT INTO Sessao VALUES(null,'Biografia','Prateleira C8'),
(null,'Literatura Brasielira','Prateleira C4'),
(null,'TI','Prateleira C1');

INSERT INTO Livro VALUES(null,'Barak Obama','RCJ',1),
(null,'Iracema','José de Alencar',2),
(null,'Fundamentos da Informática','André da Silva',3);

INSERT INTO Emprestimo VALUES(null,'2019-04-03 10:50',1,'2019-04-10'),
(null,'2019-04-05 18:15:00',2,'2019-04-12'),
(null,'2019-04-06',3,'2019-04-13');

INSERT INTO LivroEmprestimo VALUES
(1,1),
(2,2),
(3,3);

Select * from livro;

Select * from usuario;

Select matricula, nome, telefone from usuario;

Select * from usuario where matricula>2;

Select * from usuario where matricula=1;

Select codigolivro, titulo from livro;

Select * from livro; 

Select livro.codigolivro, livro.titulo, livro.autor, sessao.descricao as Sessão
   from livro, sessao    
     where livro.codsessao = sessao.codigosessao;