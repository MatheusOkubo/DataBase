create database Biblioteca;
use biblioteca;

create table aluno(
id_aluno int not null auto_increment primary key,
nome varchar(50),
sexo varchar(1),
data_de_nasc date,
telefone varchar(50),
turma varchar(50)
) engine=InnoDB ;

create table livro(
id_livro int not null auto_increment primary key,
nome varchar(50),
genero varchar(20),
ano_de_publicacão varchar(4),
cod_ISBN int
) engine=InnoDB;

create table emprestimo(
id_emprestimo int not null auto_increment primary key,
aluno int,
livro int,
quantidade_de_livros int,
data_de_retirada date,
data_de_entrega date
) engine=InnoDB;

alter table emprestimo add constraint fk_id_aluno foreign key (aluno) references aluno(id_aluno);
alter table emprestimo add constraint fk_id_livro foreign key (livro) references livro(id_livro);

insert into aluno(nome, sexo, data_de_nasc, telefone, turma)
values ('Matheus Eduardo', 'M', '2004-09-30', '3422-2537', '4º Informática');
insert into aluno(nome, sexo, data_de_nasc, telefone, turma)
values ('Elias Alipio', 'M', '2004-04-24', '3425-2340', '4º Informática');
insert into livro(nome, genero, ano_de_publicacão, cod_ISBN)
values ('Diário de um banana', 'comédia', '1990', '123456789');
insert into livro(nome, genero, ano_de_publicacão, cod_ISBN)
values ('Diário de Anne Frank', 'história', '1950', '123456780');
insert into emprestimo(aluno, livro, quantidade_de_livros, data_de_retirada, data_de_entrega)
values ('1', '1', '1', '2022-05-20', '2022-05-23');
insert into emprestimo(aluno, livro, quantidade_de_livros, data_de_retirada, data_de_entrega)
values ('2', '2', '1', '2022-05-20', '2022-05-23');

select * from  aluno;
select * from livro;
select * from emprestimo;