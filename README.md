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
... ON DELETE [RESTRICT | CASCADE | SET NULL]
... ON UPDATE [RESTRICT | CASCADE | SET NULL]
```

Exemplos:
```sql
ALTER TABLE nome_da_tabela ADD CONSTRAINT nome_constraint FOREIGN KEY (atributo) REFERENCES outra_tabela (atributo) ON DELETE CASCADE;
```

## SQL/DLL + DML

DML, acrônimo para Linguagem de Manipulação de Dados. Esta contém o conjunto de instruções para adicionar, modificar, consultar ou remover dados de um bando de dados.

INSERT: adiciona tuplas nas tabelas.
```sql
... todas as colunas são preenchidas:
INSERT INTO nome_da_tabela VALUES (valorAtributo1, valorAtributo2, valorAtributo3);

... definda quais colunas serão preenchidas:
INSERT INTO nome_da_tabela(nomeAtributo1, nomeAtributo2) VALUES (valorAtributo1, valorAtributo2);

... inserção de várias tublas:
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
... remove todas as tuplas:
DELETE FROM nome_da_tabel;

... remoção de tuplas que saisfazem a condição:
DELETE FROM tasks WHERE status = "DONE";
```
