# UFCG - Database I

### Acesso ao VM e ao SGBD

Acesso a VM:
```shell
ssh -o ServerAliveInterval=30 ronnyldo@150.165.85.37 -p 45600
```

Acesso explicito ao banco de dados:
```shell
psql -d ronnyldo_db
```

### SQL/DLL comando básicos
```sql
CREATE TABLE - cria tabela; 
DROP TABLE - deleta tabela;
ALTER TABLE - altera tabela;
```

### Constraints
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
