# Mudanças no esquema

DROP é usado para remover esquemas, tabelas, domínios e restrições.

Opções CASCADE e RESTRICT.
```slq
DROP SCHEMA COMPANY CASCADE;
```

ALTER TABLE, remove, altera ou adiciona colnas e aciciona ou remove constraints.
```slq
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

