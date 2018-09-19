# UFCG - Database I

## Acesso ao VM e ao SGBD
Acesso a VM:
```shell
ssh -o ServerAliveInterval=30 ronnyldo@150.165.85.37 -p 45600
```

Acesso explicito ao banco de dados:
```shell
psql -d ronnyldo_db
```

## SQL/DLL comando básicos
Princípais comandos:
```sql
CREATE TABLE - cria tabela; 
DROP TABLE - deleta tabela;
ALTER TABLE - altera tabela;
```

Constraints:
```sql
PRIMARY KEY
FOREIGN KEY
NOT NULL
```

Exemplo de CREATE TABLE com constraint de *chave estrangeira*:
```sql
CREATE TABLE tabela(
  atributo1 tipo1,
  atributo2 tipo2 REFERENCES outra_tabela(atributo_da_outra_tabela),
  atributo3 tipo3
);
```

Exemplo de CREATE TABLE com constraint *NOT NULL*:


```sql
CREATE TABLE tabela(
  atributo1 tipo1 NOT NULL,
  atributo2 tipo2,
  atributo3 tipo3 NOT NULL
);
```

Exemplo de ALTER TABLE:
```sql
ALTER TABLE nome_atual_da_tabela RENAME TO nome_novo;
ALTER TABLE nome_tabela ADD COLUMN noe_atributo charvar(30);
```

Definição de comportamentos para FOREIGN KEYs do comando DELETE e UPDATE:

```sql
Sintaxe:
-- ON DELETE [RESTRICT | CASCADE | SET NULL]
-- ON UPDATE [RESTRICT | CASCADE | SET NULL]
```

Exemplos:
```sql
ALTER TABLE nome_da_tabela ADD CONSTRAINT nome_constraint FOREIGN KEY (atributo) REFERENCES outra_tabela (atributo) ON DELETE CASCADE;
```

## SQL/DLL + DML
DML, acrônimo para Linguagem de Manipulação de Dados. Esta contém o conjunto de instruções para adicionar, modificar, consultar ou remover dados de um bando de dados.

INSERT: adiciona tuplas nas tabelas.
```sql
-- todas as colunas são preenchidas:
INSERT INTO nome_da_tabela VALUES (valorAtributo1, valorAtributo2, valorAtributo3);

-- definda quais colunas serão preenchidas:
INSERT INTO nome_da_tabela(nomeAtributo1, nomeAtributo2) VALUES (valorAtributo1, valorAtributo2);

-- inserção de várias tublas:
INSERT INTO nome_da_tabela(nomeAtributo1, nomeAtributo2) 
VALUES 
  (valorAtributo1, valorAtributo2),
  (valorAtributo1, valorAtributo2),
  (valorAtributo1, valorAtributo2);
```

## Consulta de dados
SELECT, FROM e  WHERE são comandos de projeção e seleção, para verificação dos elementos inseridos na tabela.

Exemplos:
```sql
SELECT nomeAtributo1, nomeAtributo2 FROM nome_da_tabela WHERE condição_de_seleção;

SELECT nome, endereço FROM empregado WHERE salario > 1500;
```

## Remoção de dados
O comando DELETE é utilizado para remover dados de uma tabela.

Exemplo:
```sql
-- remove todas as tuplas:
DELETE FROM nome_da_tabel;

-- remoção de tuplas que saisfazem a condição:
DELETE FROM tasks WHERE status = "DONE";
```

## Atualização de dados
O coando UPDATE atualiza dados em uma tabela.

Exemplos:
```sql
UPDATE nome_da_tabela SET nome_atributo = valor_atributo WHERE condição;

UPDATE funcionario SET telefone = '8888-9999' WHERE cpf = '123456789011';

UPDATE funcionario SET salario = salario+200, gratificacao = gratificacao+100
WHERE cidade_lotacao = 'Campina Grande' AND ultima_avaliacao = 'OTIMA';
```

## Restrições de CHECK constraints
CHECK é utilizado para restringir valores de uma coluna.

Exemplos:
```sql
CREATE TABLE produto (
  id_produto integer,
  preco numeric,
  CHECK (preco > 0)
);

CREATE TABLE produto (
  id_produto integer,
  preco numeric,
  CONSTRAINT preco_validochk CHECK (preco > 0)
);

ALTER TABLE produto ADD CONSTRAINT produto_chk_preco_valido CHECK (preco > 0);
```

## UNIQUE
UNIQUE garante que não haverá valores iguais em uma mesma coluna.

Exemplos:
```sql
CREATE TABLE pessoa (
  cpf integer,
  nome varchar(50) UNIQUE,
  data_nasc date
);

CREATE TABLE pessoa (
  cpf integer,
  nome varchar(50),
  data_nasc date,
  UNIQUE (nome)
);

CREATE TABLE pessoa (
  a integer,
  b integer,
  c integer,
  UNIQUE (a, c)
);
```

## EXCLUDE

EXCLUDE cria exceções generalizadas, acessando todas as tuplas da tabela.

Exemplo:
```sql
-- Exemplo, não permitir que existam dois aluguéis para um mesmo veículo (mesmo id de veículo em uma tabela aluguel) se os períodos de locação tiverem interseção entre si.
-- verifica o id_veiculo com o operador "=" e o período de locação (do tipo intervalo de tempo) com o operador de interseção "&&".

ALTER TABLE locacao
ADD CONSTRAINT locacao_excl
EXCLUDE USING gist (
  id_veiculo WITH =,
  periodo WITH &&
);
```

No exemplo acima, *id_veiculo WITH =* significa que o EXCLUDE irá procurar valores iguais na coluna *id_veiculo*. Caso ele ache, irá verificar, apenas nas tuplas que tem *id_veiculo* são iguais, se há interseção entre os valores na coluna *periodo*. Assim, proibindo que isso se mantenha na tabela.

Exemplo de EXCLUDE com WHERE:
```sql
-- Não permite que existe duplicação do valor "RONNYLDO", na coluna nome. Ou seja, apenas pode existir um 'RONNYLDO' na coluna nome.

ADD CONSTRAINT unico_se_valor
EXCLUDE USING gist(nome WITH =) WHERE (nome = 'RONNYLDO');
```
