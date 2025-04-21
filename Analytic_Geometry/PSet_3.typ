#let rank = "rank"

#set page(numbering: "1")

#align(right, text(12pt)[
  NES
])

#align(center, text(23pt)[
  Lista 3 - Geometria Analítica e Matrizes - (Solucionário)
])
#align(center, text(16pt)[
  Arthur Rabello & Gabriel Carneiro
    
  #datetime.today().display("[day]/[month]/[year]")
])

= Questão 1 (Introdutórios)

#rect(width: auto, height: auto)[
Use o Teorema de Rouché-Frobenius para determinar se os seguintes sistemas lineares são Possíveis e Determinados, Possíveis e Indeterminados ou Impossíveis:

== a)

$
  x + 2y + z = 2\
  -x + 3y + z = 0\
  -x + y + z = 1
$

== b)

$
  x + y + z = -1\
  -2x - y + z = 0\
  -2x + 7y + z = -4
$
]

= Solution:

== a)
A matriz aumentada do sistema é:

$
  mat(
    1, 2, 1, 2;
    -1, 3, 1, 0;
    -1, 1, 1, 1;
  )
$

Após escalonamento (faça as contas), concluímos que o sistema é possível e determinado, pois $rank(A) = rank(A|b) = 3$.

== b)

Analogamente ao item anterior, a matriz é:

$
  mat(
    1, 1, 1, -1;
    -2, -1, 1, 0;
    -2, 7, 1, -4;
  )
$

E após escalonamento (faça as contas), concluímos que o sistema é possível e determinado.

= Questão 2 (Introdutórios)

#rect(width: auto, height: auto)[

Use o Teorema de Rouché-Frobenius para determinar quando os seguintes sistemas lineares são Possíveis e Determinados, Possíveis e Indeterminados ou Impossíveis, segundo os valores de $k$:

== a)

$
  x - y + 2z = 3\
  k x + 5y - 4z = 1\
  -3x + 2y - z = 1
$

== b)

$
  -2x + y + k z = 4\
  x + z = 2\
  x + y + z = 2
$
]

= Solution:

== a)

A matriz do sistema é (não-aumentada):
$
  mat(
    1, -1, 2;
    k, 5, -4;
    -3, 2, -1;
  )
$
Após escalonamento (faça as contas), concluímos que o determinante da matriz é $21 + 3 k$, logo, o sistema é possível e determinado se $k != -7$. Para $k = -7$, o sistema é impossível, pois $rank(A) = 2, rank(A|b) = 3$ (faça as contas).

== b)
A matriz do sistema é (não-aumentada):

$
  mat(
    -2, 1, k;
    1, 0, 1;
    1, 1, 1;
  )
$

Após escalonamento (faça as contas), concluímos que o determinante da matriz é $k + 2$, logo, o sistema é possível e determinado se $k != -2$. Para $k = -2$, o sistema é impossível, pois $rank(A) = 2, rank(A|b) = 2$ (faça as contas).

= Questão 3 (Introdutórios)

#rect(width: auto, height: auto)[
Mostre que as matrizes coluna a seguir são linearmente dependentes:

$
  A  =mat(1;3;2) , B = mat(-2;-2;1), C = mat(-3;-1;4)
$
]

= Solution:

Os vetores $A,B,C$ são linearmente dependentes se $exists lambda_1, lambda_2, lambda_3 in RR without 0$ s.t:

$
  lambda_1 A + lambda_2 B + lambda_3 C = 0
$

Ou, equivalentemente, se a matriz formada pelos vetores $A,B,C$ não tem posto completo, ou seja, se $rank(A,B,C) < 3$.

A matriz formada pelos vetores $A,B,C$ é:

$
  mat(
    1, -2, -3;
    3, -2, -1;
    2, 1, 4;
  )
$
Após escalonamento (faça as contas), concluímos que o posto da matriz é $2 < 3$, logo os vetores são _LD_.

= Questão 4 (Introdutórios)

#rect(width: auto, height: auto)[
Verificar que os seguintes sistemas de equações são, respectivamente, Determinado, Indeterminado e Impossível:

== a)

$
  8x + y + 4z = 9\ 
  5x - 2y + 4z = 6\ 
  x + y = 1 
$

== b)

$
  6x - y + 3z = 6\ 
  -6x + 8y = -10\
  2x - 5y - z = 4 
$

== c)

$
  x + y + z = 1\ 
  3x - 4y = 5\ 
  7x - y - 3z = 8 
$
]

= Solution:

== a)
A matriz do sistema é:

$
  mat(
    8, 1, 4, 9;
    5, -2, 4, 6;
    1, 1, 0, 1;
  )
$

Após escalonamento (faça as contas), concluímos que o sistema é possível e determinado, pois $rank(A) = rank(A|b) = 3$.

== b)

A matriz do sistema é:

$

  mat(
    6, -1, 3, 6;
    -6, 8, 0, -10;
    2, -5, -1, 4;
  )
$

Após escalonamento (faça as contas), concluímos que o sistema é possível e indeterminado, pois $rank(A) = rank(A|b) = 2$.

== c)

A matriz do sistema é:

$
  mat(
    1, 1, 1, 1;
    3, -4, 0, 5;
    7, -1, -3, 8;
  )
$

Após escalonamento (faça as contas), concluímos que o sistema é impossível, pois $rank(A) = 2, rank(A|b) = 3$.


= Questão 1 (Aprofundamento)

#rect(width: auto, height: auto)[
Discutir o seguinte sistema de acordo com os valores de $k$:

$
  k x - y = 1\
  x - k y = 2k - 1 
$
]

= Solution:

A matriz do sistema é:

$
  mat(
    k, -1;
    1, -k;
  )
$

Cujo determinante é $1 - k^2$, com $k != plus.minus 1$, $rank(A) = 2$, logo o sistema é possível e determinado. Se $k = 1$, ambas as equações se reduzem a $x - y = 1$, o que tem infinitas soluções. Se $k = -1$, o sistema se reduz a $x + y = 1$ e $x + y = 2$, o que é impossível.

= Questão 2 (Aprofundamento)

#rect(width: auto, height: auto)[

Considere o sistema de equações lineares:

$
  x + 2y + 3z = 1\ 
  x + a y + 3z = 2\ 
  2x + (2+a) y + 6z = 3
$

== a)

Encontrar um valor de $a$ para que o sistema seja Impossível.

== b)

Verificar se existe algum valor de $a$ para o qual o sistema seja Possível Determinado.

== c)

Resolver o sistema para $a = 0$.
]

= Solution:

== a)

A matriz do sistema é:

$
  mat(
    1, 2, 3;
    1, a, 3;
    2, 2 + a, 6;
  )
$
Para $a = 2$, as linhas 1 e 2 se tornam iguais, logo o determinante zera e o sistema se torna impossível.

== b)

Usando a mesma matriz (descrita no item anterior), note que o rank da matriz nunca é completo, logo o sistema nunca é possível e determinado (faça as contas).

== c)

O sistema de equações é:

$
  x + 2y + 3z = 1\ 
  x + 0 y + 3z = 2\ 
  2x + 2 y + 6z = 3
$

Esse sistema possui infinitas soluções (verifique!).

= Questão 3 (Aprofundamento)

#rect(width: auto, height: auto)[
(Exercício Opcional) Dadas as matrizes:

$
  A = mat(
    1,1,-2;
    2,1,1;
    2,3,-9;
  ), 

  C_1 = mat(
    1;2;alpha
  ),

  C_2 = mat(
    -6;-11;beta
  ),

  X = mat(
    x;y;z
  )
$

== a)

Determinar o valor de $alpha$ para que o sistema $A X = C_1$ seja Impossível.

== b)

Determinar os valores de $beta$ para os quais o sistema $A X = C_2$ é Determinado e resolver para um desses valores.

== c)

Para $alpha = 3$ e $beta = -13$, estudar o sistema $A X = C_1 + C_2$).
]

= Solution:

== a)
A matriz do sistema é:

$
  mat(
    1, 1, -2, 1;
    2, 1, 1, 2;
    2, 3, -9, alpha;
  )
$

Após escalonamento (faça as contas), concluímos que o determinante da matriz é $2 + alpha$, então quando $alpha = -2$, o sistema é impossível.

== b)
A matriz do sistema é:

$
  mat(
    1, 1, -2, -6;
    2, 1, 1, -11;
    2, 3, -9, beta;
  )
$

Escalonando a matriz, concluímos que o sistema é possível com $beta = -13$.


== c)

A matriz do sistema é:

$
  mat(
    1, 1, -2, -6;
    2, 1, 1, -11;
    2, 3, -9, -13;
  )
$

Após escalonamento, concluímos que o sistema é impossível (verifique!).


= Questão 4 (Aprofundamento)

#rect(width: auto, height: auto)[
Discutir e resolver os seguintes sistemas:
== a)

$
  a x + y + z = 1\ 
  x + a y + z = b\ 
  x + y + a z = 1
$

== b)

$
  x + 2z = 3\ 
  3x + y + z = -1\ 
  2y - z = -2\ 
  x - y + a z = -5
$
]

= Solution:

== a)

A matriz do sistema é:

$
  mat(
    a, 1, 1;
    1, a, 1;
    1, 1, a;
  )
$

Note que se $a = 1$, todas as linhas são iguais e o sistema é válido somente se $b = 1$, tendo infinitas soluções. Se $a != 1$, o determinante é $a^3 - 3 a^2 + 3 a - 1 = (a - 1)^3$.

Se $a = -2$ e $b = -2$, existem infinitas soluções. (verifique!)

== b)

A matriz do sistema é:

$
  mat(
    1, 0, 2;
    3, 1, 1;
    0, 2, -1;
    1, -1, a;
  )
$

Após escalonamento (faça as contas), concluímos que se $a = -2$, temos uma solução única, caso contrário o sistema é impossível. (verifique!)


= Questão 5 (Opcional) (Aprofundamento)

#rect(width: auto, height: auto)[
Três tipos de suplementos alimentares estão sendo desenvolvidos. Para cada grama de ração, tem-se que:

- O suplemento 1 tem 1 unidade de vitamina A, 3 unidades de vitamina B e 4 unidades de vitamina C;

- O suplemento 2 tem 2, 3, e 5 unidades das vitaminas A, B, e C, respectivamente;

- O suplemento 3 tem 3 unidades das vitaminas A e C, e não contém vitamina B.

São necessárias 11 unidades de vitamina A, 9 de vitamina B, e 20 de vitamina C, encontre todas as possíveis quantidades dos suplementos 1, 2, e 3, que fornecem a quantidade de vitaminas desejada.

== a)

Qual o sistema homogêneo associado?

== b)

O sistema homogêneo associado aceita solução não nula?

== c)

Qual a relação entre a resposta dos itens anteriores? 

== d)

Se o suplemento 1 custa 6 reais por grama e os outros dois custam 1, existe uma solução custando exatamente 10 reais?
]

= Solution:

== a)

Seja x a quantidade de suplemento 1, y a quantidade de suplemento 2 e z a quantidade de suplemento 3. O sistema original é:

$
  x + 2y + 3z = 11\
  3x + 3y + 0z = 9\
  4x + 5y + 3z = 20
$

E o sistema homogêneo associado é:

$
  x + 2y + 3z = 0\
  3x + 3y + 0z = 0\
  4x + 5y + 3z = 0
$

== b)

A matriz do sistema é:

$
  mat(
    1, 2, 3;
    3, 3, 0;
    4, 5, 3;
  )
$

Após escalonamento (faça as contas), concluímos que o posto da matriz é $2$, logo o sistema admite soluções não nulas.

== c)

A existência de soluções não nulas para o sistema homogêneo indica que o sistema original não possui solução única. De fato, se o sistema homogêneo tem soluções não nulas, então o sistema original ou não tem solução ou tem infinitas soluções.

== d)

A restrição adicional é $6x + y + z = 10$, vamos resolver agora o sistema completo:

$
  x + 2y + 3z = 11 "(vitamina A)"\
  3x + 3y + 0z = 9 "(vitamina B)"\
  4x + 5y + 3z = 20 "(vitamina C)"\
  6x + y + z = 10 "(custo)"
$

Após umas maracutaias selvagens, obtemos:

$
  x = 1\
  y = 2\
  z = 2
$

É a solução custando exatamente 10 unidades de real.

= Questão 1 (Avançados/Teóricos)

#rect(width: auto, height: auto)[
Demonstre que qualquer subconjunto não vazio de um conjunto de matrizes linearmente independentes ${A_1, dots , A_n}$ é também linearmente independente.
]

= Solution:

Se $A = {A_1, dots, A_n}$ é _LI_, então:

$
  sum_(i =1)^n lambda_i A_i = 0 <=> lambda_i = 0
$

Suponha agora que exista $K subset A = {A_k_1, .. A_k_m}$ _LD_, ou seja:

$
  sum_(i =1)^m lambda_i A_k_i = 0 "com um" lambda_phi != 0
$

Então daí concluímos que:

$
  A_k_phi = (-sum_(i != phi) lambda_i A_k_i) / lambda_phi
$

Isso em $A$ é um absurdo, pois o conjunto deixaria de ser _LI_. Logo não existe tal $K$.

= Questão 2 (Avançados/Teóricos)

#rect(width: auto, height: auto)[
Ache matrizes $A$ e $B$ para as quais $rank(A) = rank(B)$, porém $rank(A^2) != rank (B^2)$.
]

= Solution:

Tome $A = mat(0, 1; 0, 0)$ e $B = mat(1, 0; 0, 0)$.

Note que $rank(A) = rank(B) = 1$, porém $rank(A^2) = 0$ e $rank(B^2) = 1$.