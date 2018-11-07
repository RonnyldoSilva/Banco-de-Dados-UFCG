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

