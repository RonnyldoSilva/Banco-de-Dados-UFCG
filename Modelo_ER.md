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

## Exemplo: Entidade CAR

<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/EntidadeCar.png">

## Refinando o design: relacionamentos

O design inicial não está completo.

Alguns requisitos devem ser representados através de relacionamentos.

O modelo ER possui 3 princípais conceitos:
* Entidade (com tipos de entidades e conjuntos de entidades)
* Atributos (simples, composto, multivalorado)
* Relacionamento (com tipos de relacionamentos e conjuntos de relacionamentos)

## Relacionamentos

Um relacionamento relaciona duas ou mais entidades:
* Ex: EMPLOYEE John Smith *works on* the ProductX PROJECT.
* EX: EMPLOYEE Franklin Wong *manages* the Research DEPARTMENT.

Relacionamentos que relacionam entidades de mesmo tipos são agrupados e chamados de um tipo de relacionamento.
* Ex: WORKS_ON: onde EMPLOYEEs e PROJECTs participam;
* Ex: MANAGES: onde EMPLOYEEs e DEPARTMENTs participam.

Grau de um relacionamento: número de entidades partticipantes:
* MANAGES e WORKS_ON são relacionamentos binários.

## Tipos de Relacionamento VS Conjunto de Relacionamentos

Tipos de relacionamento:
* Descrição esquemática do relacionamento.
* Identifica o nome do relacionamento e as entidades participantes.
* Também pode identificar certas constraints.

Conjunto de relacionamentos:
* Atual conjunto de instâncias de relacionamentos existentes no BD.
* Estado atual de um tipo de relacionamento.

## Relacionamento do Esquema COMPANY

Ao analisar os requisitos, os seguintes relacionamentos são identificados (todos binários / grau 2):
* WORKS_ON (entre EMPLOYEE, DEPARTMENT)
* MANGES (entre EMPLOYEE, DEPARTMENT)
* CONTROLS (entre DEPARTMENT, PROJECT)
* WORKS_ON (entre EMPLOYEE, PROJECT)
* SUPERVISION (entre EMPLOYEE (como subordinado), EMPLOYEE (como supervisor))
* DEPENDENTS_OF (EMPLOYEE, DEPARTMENT)

## Exemplo de relacionamento ternário

<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/Relacionamento_ternario.PNG">

## Diagrama ER

<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/Diagrama_ER.PNG">

## Restrições em Relacionamentos

Restrições (Constraints) em Relacionamentos:

Razão de cardinalidade (específica a participação máxima):
* Um-para-um (1:1).
* Um-para-muitos (1:N) ou muitos-para-um (N:1).
* Vários-para-vários (M:N).

Dependências da existência (específica a participação mínima, também chamado de restrição de participação):
* Zero (participação opcional, não dependente da existência).
* Um ou mais (participação obrigatória, dependente da existência).
