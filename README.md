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

CREATE TABLE - cria tabela; 
DROP TABLE - deleta tabela;
ALTER TABLE - altera tabela;

### Constraints

```sql
PRIMARY KEY
FOREIGN KEY
NOT NULL
```
