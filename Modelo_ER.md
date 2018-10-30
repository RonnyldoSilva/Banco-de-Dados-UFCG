# Modelo ER / Modelagem de dados

## Conceitos

* ER: Entidade-relacionamento
* Entidades: são objetos pertencentes ao mini-mundo
* Atributos: são propriedades usadas para descrever uma entidade.
* Uma entidade específica cai ter um valor para seus atributos;
* Cada atributo tem um *value set* (conjunto de valores) associados a ele, exemplo: interger, string, date etc.

## Tipos de Atributos

* Simples: nome, idade, sexo, data de nascimento etc.
* Composto: Endereço(apto, casa, rua, cidade, estado, cep, país) etc.
* Multi-valorados: cor de uma roupa, representado por {Cor}.
* Composto e multi-valorado: {FormaçãoAnterior(escola, ano, série, área)}

## Tipos de entidades e atributos-chave

Tipos de Entidades:
* Correspondem a um mesmo tipo de objeto do mini-mundo.
* Possuem mesmo conjunto de atributos.
* Ex: EMPLOYEE e PROJECT.

Chaves:
* Atributos com a propriedade de unicidade.
* Ex: SSN de EMPLOYEE.

## Chaves

Chave pode ser composta:
* Placa (Estado, Numero).

Uma entidade pode ter mais de uma chave:
* Carro: Renavan, Placa.

Cada chave é sublinhada (diferente do esquema relacional onde só a chave primária é sublinhada).

## Conjunto de Entidades

Cada tipo de entidade terá uma coleção de entidades armazenada no banco de dados:
* Chamado de conjunto de entidades ou coleção de entidades;
* O mesmo nome pode ser usado para referir ao tipo de netidade ou ao conjunto de entidades;
* Conjunto de entidades representa o estado atual de um banco de dados.

## Domínios de atributos

Cada atributo simples é associado a um conjunto valor:
* Ex: Lastname: string de comprimento até 15 caracteres.
Um conjunto valor especifica o conjunto de valores associado a um atributo.

Matematicamente, defini-se um atributo A de uma entidade E cujo conjunto valor é V como uma função:

A : E → P(V)

Onde P(V) indica o conjunto potência (todos os possíveis subconjuntos) de V.
