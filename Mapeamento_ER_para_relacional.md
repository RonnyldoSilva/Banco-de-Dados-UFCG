# Mapeamento ER/EER para relacional

## Objetivo durante o mapeamento

Preservar toda a **informação** (que inclui todos os atributos).

Manter as restrições na medida do possível:
* O modelo relacional não pode preservar todas as restrições. Por exemplo, cardinalidade de máximo e mínimo, subtipos muito detalhados etc.

Minimizar os valores nulos.

## Visão Geral

Algoritmo de mapeamento ER -> Relacional:
* Passo 1: mapeamento de entidades regulares.
* Passo 2: mapeamento de entidades fracas.
* Passo 3: mapeamento de relacionamentos binários 1:1.
* Passo 4: mapeamento de relacionamentos binários 1:N.
* Passo 5: mapeamento de relacionamentos binários N:M.
* Passo 6: mapeamento de atributos multivalorados.
* Passo 7: mapeamento de relacionamento N-ários.

Mapeamento de construções do modelo EER para relações:
* Passo 8: mapeamento de especialização e generealização.
* Passo 9: mapeamento de tipos de união (categorias).

## Passo 1: Mapeamento de Entidades Regulares.

* Para cada tipo de entidade regular (forte) E, criar uma relação R que inclua todos os atributos semples de E.
* Escolher um dos atribuitos-chave de E como a chave primária para R.
* Se a chave escolhida for composta, o conjjunto de atributos simples que formam esta chave formarão a chave primária de R.

Exemplo: EMPLOYEE, DEPARTMENT e PROJECT

## Passo 2: Mapeamento de Entidades Fracas.

* Criar uma relação R e incluir todos os atributos simples da entidade fraca W.
* Incluir como chaves estrangeiras em R as chaves primárias da relação proprietária.
* Definir como chave estrangeiras em R os atributos que correspondem à chave parcial de W e à chave primária de E.

Exemplo: DEPENDENT.
