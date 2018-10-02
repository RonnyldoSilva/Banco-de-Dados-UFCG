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
-- 1ª opção de criação de tabela.
CREATE TABLE EMPLOYEE;
-- Opcionalmente, pode-se especificar o esquema.
CREATE TABLE COMPAMY.EMPLOYEE;
```

### Relações

* CREATE TABLE cria arquivos no computador.
* CREATE VIEW não cria arquivos.

### Tipos básicos

* Integer, INT, SMALLINT, FLOAT, REAL, DOUBLE PRECISION, CHAR(n), CHARACTER(n), VARCHAR(n), CHAR VARYING(n), CHARACTER VARYING(n).
* BTI(n), BIT VARYING(n), TRUE, FALSE, NULL, YEAR, MONTH, DAY, DATE, TIME.

#### Timestamp:
* Pode conter especificação de fuso-horário (WITH TIME ZONE).

### Criação de Domínios
* Definição de domínios facilita a definição de atributos (de mesmo domínio).
* Melhora a legibilidade do esquema.

Exemplo:
```sql
CREATE DOMAIN SSN_TYPE AS CHAR(9);
```

### Tipos

Utilzados como recurso de orientação a objetos.
```sql
CREATE TYPE;
```

### Constraints

* PRIMARY KEY: valor não duplicado e não null.
* FOREIGN KEY: deve conter um valor existente na tabela referenciada (ou null).

Valor padrão de um atriibuto:
```sql
DEFAULT <value>;
NOT NULL;
```

#### CHECK

Exemplo:
```sql
CHACK (Dnumber > 0 AND Dnumber < 21);
```
