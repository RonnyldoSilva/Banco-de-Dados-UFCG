SQL - Consultas.

Criando o Esquema Company
```sql
CREATE SCHEMA company;
```

Remoção de tabelas e esquemas:
```sql
 DROP OWNED BY CURRENT_USER;
```

Search_path evita o uso de qualificadores, estes apenas utilizados caso exita pelo menos dois esquemas com mesmo nome.

Qualificadores referenciam os elementos dos esquemas: "nomeDoEquema.nomeDaTabela".

Adicionado um novo esquema no search_path:
```sql
SET search_path TO company,public;

-- Veja o seu esquema no search_path:
SHOW search_path;
```
