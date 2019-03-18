-- 1
-- Já foram criados na parte 2.

-- 2
CREATE TABLE automovel (
placa varchar(7) NOT NULL, 
estado CHAR(2), 
dono CHAR(20)
);

CREATE TABLE segurado (
seguradorar_id INTEGER NOT NULL,
segurado_id INTEGER NOT NULL,
Seguro_id INTEGER NOT NULL 
);

CREATE TABLE perito (
cpf INTEGER NOT NULL,
nome VARCHAR(30),
seguradorar_id INTEGER NOT NULL
);

CREATE TABLE oficina (
cnpq INTEGER NOT NULL
);

CREATE TABLE seguro (
seguro_id INTEGER NOT NULL,
seguradora_id INTEGER NOT NULL
);

CREATE TABLE sinistro (
sinistro_id INTEGER NOT NULL,
ocorrencia TEXT,
data DATE
);

CREATE TABLE pericia (
pericia_id INTEGER NOT NULL,
perito_id INTEGER
);

CREATE TABLE reparo (
placa_veiculo varchar(7) NOT NULL, 
reparar BOOLEAN
);

--3

ALTER TABLE automovel ALTER COLUMN estado SET NOT NULL;
ALTER TABLE segurado RENAME COLUMN seguradorar_id TO seguradora_id;
ALTER TABLE perito RENAME COLUMN seguradorar_id TO seguradora_id;
ALTER TABLE automovel ADD PRIMARY KEY (placa);
ALTER TABLE segurado  ADD PRIMARY KEY (seguradora_id);
ALTER TABLE perito  ADD PRIMARY KEY (cpf);
ALTER TABLE oficina ADD PRIMARY KEY (cnpq);
ALTER TABLE seguro ADD PRIMARY KEY (seguro_id);
ALTER TABLE sinistro ADD PRIMARY KEY (sinistro_id);
ALTER TABLE pericia ADD PRIMARY KEY (pericia_id);
ALTER TABLE reparo ADD COLUMN reparo_number SERIAL NOT NULL;
ALTER TABLE reparo ADD PRIMARY KEY (reparo_number);

--4

ALTER TABLE perito ADD CONSTRAINT seguradora_do_segurado FOREIGN KEY (seguradora_id) REFERENCES segurado (seguradora_id);
ALTER TABLE seguro DROP COLUMN seguradora_id;
ALTER TABLE seguro ADD COLUMN placa_veiculo varchar(7) NOT NULL;
ALTER TABLE segurado ADD CONSTRAINT seguro_do_segurado FOREIGN KEY (seguro_id) REFERENCES seguro (seguro_id); 
ALTER TABLE seguro ADD CONSTRAINT placa_do_seguro FOREIGN KEY (placa_veiculo) REFERENCES automovel (placa); 
ALTER TABLE sinistro ADD COLUMN placa_veiculo varchar(7) NOT NULL;
ALTER TABLE sinistro ADD CONSTRAINT placa_do_sinistro FOREIGN KEY (placa_veiculo) REFERENCES automovel (placa);
ALTER TABLE pericia ADD COLUMN sinistro_id INTEGER NOT NULL;
ALTER TABLE pericia ADD CONSTRAINT sinistro_da_pericia FOREIGN KEY (sinistro_id) REFERENCES sinistro (sinistro_id); 
ALTER TABLE pericia ADD CONSTRAINT perito_da_pericia FOREIGN KEY (perito_id) REFERENCES perito (cpf);
ALTER TABLE reparo ADD CONSTRAINT placa_do_reparo FOREIGN KEY (placa_veiculo) REFERENCES automovel (placa);

--5

--6

DROP TABLE automovel CASCADE;
DROP TABLE oficina CASCADE;
DROP TABLE pericia CASCADE;
DROP TABLE perito CASCADE;
DROP TABLE reparo CASCADE;
DROP TABLE segurado CASCADE;
DROP TABLE seguro CASCADE;
DROP TABLE sinistro CASCADE;

--7


