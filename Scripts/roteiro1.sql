-- Aluno: Ronnyldo
-- Mini teste 1

-- 1)
-- Abaixo consta uma lista de tabelas a serem criadas no seu banco de dados. 
-- Defina os atributos que julga essenciais para cada uma das tabelas.
-- Não é preciso pensar nas constraints ainda.

-- AUTOMOVEL: placa, estado, ano, fabricante;
-- SEGURADO: nome, cpf, cod_seguro;
-- PERITO: nome, cpf, matricula;
-- OFICINA: nome, cnpj, cidade;
-- SEGURO: nome_seguradora, cnpj; 
-- SINISTRO: num_ocorrencia, data_ocorrencia;
-- PERICIA: num_ocorrencia, aut_reparo;
-- REPARO: num_ocorrencia, cod_seguro, aut_reparo;

-- 2)
-- Crie as tabelas com os atributos que definiu acima.

CREATE TABLE automovel ( placa CHAR(7), estado CHAR(2), ano INTEGER, fabricante TEXT );
CREATE TABLE segurado ( nome TEXT, cpf INTEGER, cod_seguro SERIAL );
CREATE TABLE perito ( nome TEXT, cpf INTEGER, matricula CHAR(8) );
CREATE TABLE oficina ( nome TEXT, cnpj CHAR(5), cidade TEXT );
CREATE TABLE seguro ( nome_seguradora TEXT, cnpj CHAR(5) );
CREATE TABLE sinistro ( num_ocorrencia SERIAL, data_ocorrencia DATE );
CREATE TABLE pericia ( num_ocorrencia SERIAL, aut_reparo BOOLEAN );
CREATE TABLE reparo ( num_ocorrencia SERIAL, cod_seruro SERIAL, aut_reparo BOOLEAN );

-- 3)
-- Defina as chaves primárias das tabelas e adicione essas constraints
-- através de comandos ALTER TABLE. Se decidir remover ou adicionar colunas
-- neste momento (devido as suas decisoes sobre chaves primárias), faça essas
-- alterações usando comando ALTER TABLE.

ALTER TABLE automovel ADD PRIMARY KEY (placa, estado);
ALTER TABLE segurado ADD PRIMARY KEY (cpf);
ALTER TABLE perito ADD PRIMARY KEY (matricula);
ALTER TABLE oficina ADD PRIMARY KEY (cnpj);
ALTER TABLE seguro ADD PRIMARY KEY (cnpj);
ALTER TABLE sinistro ADD PRIMARY KEY (num_ocorrencia);
ALTER TABLE pericia ADD PRIMARY KEY (num_ocorrencia);
ALTER TABLE reparo ADD PRIMARY KEY (num_ocorrencia);

-- 4)
-- Defina as chaves estrangeiras e adicione essas constraints através de comandos
-- ALTER TABLE. Se decidir remover ou adicionar colunas neste momento (devido as suas
-- decisoes sobre chaves primárias), faça essas alterações usando comando ALTER TABLE.

ALTER TABLE reparo ADD CONSTRAINT reparo_num_ocorrencia_fkey FOREIGN KEY (num_ocorrencia) REFERENCES sinistro (num_ocorrencia) ON UPDATE CASCADE;
ALTER TABLE pericia ADD CONSTRAINT pericia_num_ocorrencia_fkey FOREIGN KEY (num_ocorrencia) REFERENCES sinistro (num_ocorrencia) ON UPDATE CASCADE;



