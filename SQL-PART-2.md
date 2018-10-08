# Mudanças no esquema

DROP é usado para remover esquemas, tabelas, domínios e restrições.

Opções CASCADE e RESTRICT.
```sql
DROP SCHEMA COMPANY CASCADE;
```

ALTER TABLE, remove, altera ou adiciona colnas e aciciona ou remove constraints.
```sql
ALTER TABLE COMPANY.EMPLOYEE
DROP CONSTRAINT EMPSUPERFK CASCADE;
```

DROP COLUMN
```sql
ALTER TABLE COMPANY.EMPLOYEE DROP COLUMN Address CASCADE;
ALTER TABLE COMPANY.DEPARTMENT ALTER COLUMN Mgr_ssn DROP DEFAULT;
ALTER TABLE COMPANY.DEPARTMENT ALTER COLUMN Mgr_ssn SET DEFAULT '33355566';
```

Comparações envolvendo NULL e Lógica ternária.

IS NULL ou IS NOT NULL.
```sql
SELECT Fname, Lname
FROM EMPLOYEE
WHERE Super_ssn IS NULL;
```

Consultas aninhadas ultizando IN.
```sql
SELECT DISTINCT Pnumber
FROM PROJECT
WHERE Pnumber IN
  (
  SELECT
  FROM
  WHERE
  )
  OR
  (
  SELECT
  FROM
  WHERE
  );
```

ALL:
```sql
SELECT Lname, Fname
FROM EMNPLOYEE
WHERE Salary > ALL
  (
  SELECT
  FROM
  WHERE
  );
```

EXISTS
```sql
SELECT Fname, Lname
FROM EMPLOYEE
WHERE EXISTS
  (
  SELECT *
  FROM DEPARTMENT
  WHERE Ssn = Essn
  )
  AND EXISTS
  (
  SELECT *
  FROM DEPARTMENT
  WHERE Ssn = Mgr_Ssn
  );
   
```

JOIN junta duas ou mais tabelas.

NATURAL JOIN renomeia atributos para poder juntar as tabelas.
