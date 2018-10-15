# Esquemas e catálogos

### Schema

* Identficado por um nome de esquema.
* Inclui um identificador de autorização e descritores para cada elemento.
* Elementos do esquema incluem: tabelas, constraints, views, domains etc.

```sql
CREATE SCHEMA COMPANY AUTHORIZATION 'jSMETH';
```

### Catalog

* Coleção nomeada de esquemas em um ambiente SQL.

### CREATE TABLE

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
* BIT(n), BIT VARYING(n), TRUE, FALSE, NULL, YEAR, MONTH, DAY, DATE, TIME.

#### Timestamp:
* Pode conter especificação de fuso-horário (WITH TIME ZONE).

### Criação de Domínios
* Definição de domínios facilita a definição de atributos (de mesmo domínio).
* Melhora a legibilidade do esquema.

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
* FOREIGN KEY: deve conter um valor existente na tabela referenciada (ou null). Comportamento padrão, rejeita updates que violam a integridade. Ações de controle com gatilhos, suas opções incluem SET NULL, CASCADE e SET DEFAULT.

Valor padrão de um atriibuto:
```sql
DEFAULT <value>;
NOT NULL;
```

#### CHECK

```sql
CHACK (Dnumber > 0 AND Dnumber < 21);
```

### UNIQUE

* Chaves alternativas (secundárias)
```sql
Dname VARCHAR(15) UNIQUE;
```

### SELECT
 
* Comando para recuperar dados do BD.
 
Estrutura básica:
```sql
SELECT <lista de atributos>
FROM <lista de tabelas>
WHERE <condições>
```
 
Operadores lógicos (comparação):
```sql
=, <, <=, >, >= e <>
```

Exemplos:
```sql
-- Retorna a data e endereço do empregado John B. Smith.
SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname='John' AND Minit='B' AND Lname='Smith';

-- Retorna o nome e endereço dos empregados que são do departamento Research.
SELECT Fname, Lname, Address
FROM EMPLOYEE, DEPARTMENT
WHERE Dname='Research' AND Dnumber='Dno';

-- O mesmo nome pode ser usado para atribuitos de duas (ou mais) relações diferente.
SELECT Fname, Address.
FROM EMPLOYEE, DEPARTMENT
WHERE DEPARTMENT.Dnumber = EMPLOYEE.Dnumber;
```
### Alias / Variáveis de Tupla

Utilizadas para evitar ambiguidade quando a mesma relação é utilizada mais de uma vez na consulta.
```sql
Para cada funcionário, recuperar o primeiro e último nome do funcionário, assim como o do seu supervisor.
SELECT E.Fname, ELname, S.Fname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn=S.Ssn;
```

Usa-se a palavra DISTINCT na cláusula SELECT para remover as duplicatas.
```sql
SELECT ALL Salary
FROM EMPLOYEE;

SELECT DISTINCT Salary
FROM EMPLOYEE;
```

Inserção de várias tuplas a partir do resultado de uma consulta:
```sql
INSERT INTO WORKS_ON_INFO (name, name-pro, hours)
SELECT E.Lname, P.Pname, W.Hours
FROM PROJECT P, WORKS_ON W, EMPLOYEE E
WHERE P.Pnumber = W.Pno AND W.Essn=E.Ssn;
```

Inserção em massa em uma nova tabela:
```sql
CREATE TABLE D5EMPS LIKE EMPLOYEE
(
 SELECT E.*
 FROM EMPLOYEE AS E
 WHERE E.Dno = 5;
)
WITH DATA;
```

### UPDATE
...

### DELETE
...
