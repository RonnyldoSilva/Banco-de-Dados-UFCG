# Cálculo Relacional

O cálculo relacional é importante por 2 motivos:
* Tem uma base firme na lógica matemática.
* A linguagem de consulta padrão para SGBDs (SQL) tem alguns dos seus alicerces no cálculo relacional de tuplas.

Uma expessão de cálculo relacional cria uma nova relação.

No cálculo relacional:
* Existem variáveis, constantes, operadores lógicos de comparação e quantificadores.
* Uma tupla de resposta é essencialmente uma atribuição de constantes às variáveis que levam uma fórmula (condições) a um estado verdadeiro.

Uma expressão é especificada em termos de variáveis que variam sobre:
* Tuplas (no cálculo relacional de tuplas).
* Valores dos atributos (no cálculo do domínio).

Em uma expressão, não há ordem de operações:
* Expressão especifica apenas o que o resultado deve conter.
* Esta é a principal diferença para a álgebra relacional.

Considerada não procedimental (considerada declarativa):
* Na álgebra relacional, nós precisamos especificar uma sequência de operações. A álgebra é considerada procedimental.

O poder expressivo das linguagens é idêntico.

Uma linguagem L é relacionalmente completa se pudermos expressar em L qualquer consulta que puder ser expressada em cálculo relacional:
* A maioria das linguagens de consulta relacional é relacionalmente completa.
* Porém, estas linguagens são mais expressivas que a álgebra e o cálculo relacional (devido às operações adicionais que são frequentemente necessárias).

## Cálculo Relacional de Tupla

Uma simples consulta do cálculo relacional de tupla é da forma:

### {t | COND(t)}

* t é uma variável de tupla.
* COND(t) é uma expressão condicional que envolve t.
* O resultado é um conjunto de tuplas que satisfazem COND(t).

Exemplo: localize os nomes e sobrenomes de todos os empregados cujo o salário é acima de R$ 50.000.

<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/calculo_Relacional_exp.png">

Equivalente a consulta SQL:
```sql
SELECT t.nome, t.sobrenome
FROM EMPLOYEE t
WHERE t.salario>50000
```

## Quantificadores: Existencial e Universal
 
<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/Existencial_e_universal.PNG">
 
Uma tupla t é ligada se aparece em uma cláusula existencial ou universal. Caso contrário, ela é livre.

Exemplo: recupere o nome e endereço de todos os funcionários que trabalham para o departamento de pesquisa (Research).

<img src="https://github.com/RonnyldoSilva/UFCG---Database-1/blob/master/Images/formula_com_quantificadores.PNG">
