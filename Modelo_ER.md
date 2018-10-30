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

