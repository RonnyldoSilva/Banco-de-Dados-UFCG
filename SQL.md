# Esquemas e catálogos

### Schema

* Identficado por um nome de esquema.
* Inclui um identificador de autorização e descritores para cada elemento.
* Elementos do esquema incluem: tabelas, constraints, views, domains etc.

Exemplo:
```sql
CREATE SCHEMA COMPANY AUTHORIZATION 'jSMETH';
```

### Catalog

* Coleção nomeada de esquemas em um ambiente SQL.

### CREATE TABLE

Exemplo:
```sql
CREATE TABLEM EMPLOYEE
-- Opcionalmente, pode-se especificar o esquema.
CREATE TABLE COMPAMY.EMPLOYEE
```

### Relações

* CREATE TABLE cria arquivos no computador.
* CREATE VIEW não cria arquivos.
