create table Estudante(matricula int unique not null, nome varchar(30), data_nasc date);
create table Disciplina(codigo int unique not null, carga_horaria int);
create table EstudanteDisciplina(matricula int, disciplina int, periodo_letivo int);
alter table estudantedisciplina add foreign key (matricula) references estudante(matricula);
alter table estudantedisciplina add foreign key (disciplina) references disciplina(codigo); 







