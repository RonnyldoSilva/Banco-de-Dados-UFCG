SQL - Consultas.

Criando o Esquema Company

```sql
CREATE SCHEMA company;
```

Search_path evita o uso de qualificadores, estes apenas utilizados caso exita pelo menos dois esquemas com mesmo nome.

Adicionado um novo esquema no search_path:
```sql
SET search_path TO company,public;

-- Veja o seu esquema no search_path:
SHOW search_path;
```
