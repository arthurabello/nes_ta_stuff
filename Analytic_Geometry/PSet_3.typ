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

= Questão 1 (Introdutorios)

#rect(width: auto, height: auto)[
Use o Teorema de Rouché-Frobenius para determinar se os seguintes sistemas lineasres são Possíveis e Determinados, Possíveis e Indeterminados ou Impossíveis:

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

Apos escalonamento (faca as contas), concluimos que o sistema possivel e determinado, pois $rank(A) = rank(A|b) = 3$.

== b)

Analogamente ao item anterior, a matriz e:

$
  mat(
    1, 1, 1, -1;
    -2, -1, 1, 0;
    -2, 7, 1, -4;
  )
$

E apos escalonamento (faca as contas), concluimos que o sistema e possivel e determinado

= Questao 2(Introdutorios)

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

A matriz do sistema é (nao-aumentada):
$
  mat(
    1, -1, 2;
    k, 5, -4;
    -3, 2, -1;
  )
$
Apos escalonamento (faca as contas), concluimos que o determinante da matriz e $21 + 3 k$, logo, o sistema e possivel e determinado se $k != -7$. Para $k = -7$, o sistema e impossivel, pois $rank(A) = 2, rank(A|b) = 3$ (faca as contas).

== b)
A matriz do sistema é (nao-aumentada):

$
  mat(
    -2, 1, k;
    1, 0, 1;
    1, 1, 1;
  )
$

Apos escalonamento (faca as contas), concluimos que o determinante da matriz e $k + 2$, logo, o sistema e possivel e determinado se $k != -2$. Para $k = -2$, o sistema e impossivel, pois $rank(A) = 2,rank(A|b) = 2$ (faca as contas).

= Questao 3 (Introdutorios)

#rect(width: auto, height: auto)[
Mostre que as matrizes coluna a seguir são linearmente dependentes:

$
  A  =mat(1;3;2) , B = mat(-2;-2;1), C = mat(-3;-1;4)
$
]

= Solution:

os vetores $A,B,C$ sao linearmente dependentes se $exists lambda_1, lambda_2, lambda_3 in RR without 0$ s.t:

$
  lambda_1 A + lambda_2 B + lambda_3 C = 0
$

Ou, equivalentemente, se a matriz formada pelos vetores $A,B,C$ nao tem posto completo, ou seja, se $rank(A,B,C) < 3$.

A matriz formada pelos vetores $A,B,C$ e:

$
  mat(
    1, -2, -3;
    3, -2, -1;
    2, 1, 4;
  )
$
Apos escalonamento (faca as contas), concluimos que o posto da matriz e $2 < 3$, logo os vetores sao _LD_.

= Questao 4 (Introdutorios)

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
A matriz do sistema e:

$
  mat(
    8, 1, 4, 9;
    5, -2, 4, 6;
    1, 1, 0, 1;
  )
$

Apos escalonamento (faca as contas), concluimos que o sistema e possivel e determinado, pois $rank(A) = rank(A|b) = 3$.

== b)

A matriz do sistema e:

$

  mat(
    6, -1, 3, 6;
    -6, 8, 0, -10;
    2, -5, -1, 4;
  )
$

Apos escalonamento (faca as contas), concluimos que o sistema e possivel e indeterminado, pois $rank(A) = rank(A|b) = 2$.

== c)
=
A matriz do sistema e:

$
  mat(
    1, 1, 1, 1;
    3, -4, 0, 5;
    7, -1, -3, 8;
  )
$

Apos escalonamento (faca as contas), concluimos que o sistema e impossivel, pois $rank(A) = 2, rank(A|b) = 3$.


= Questao 1 (Aprofundamento)

#rect(width: auto, height: auto)[
Discutir o seguinte sistema de acordo com os valores de $k$:

$
  k x - y = 1\
  x - k y = 2k - 1 
$
]

= Solution:

A matriz do sistema e:

$
  mat(
    k, -1;
    1, -k;
  )
$

Cujo determinante e $1 - k^2$, com $k != plus.minus 1$, $rank(A) = 2$, logo o sistema e possivel e determinado. Se $k = 1$, ambas as equacoes se reduzem a $x - y = 1$, o que tem infinitas solucoes. Se $k = -1$, o sistema se reduz a $x + y = 1$ e $x + y = 2$, o que e impossivel.

= Questao 2 (Aprofundamento)

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

A matriz do sistema e:

$
  mat(
    1, 2, 3;
    1, a, 3;
    2, 2 + a, 6;
  )
$
Para $a = 2$, as linhas 1 e 2 se tornam iguais, logo o determinante zera e o sistema se torna impossivel

== b)

Usando a mesma matriz (descrita em no item anterior), note que o rank da matriz nunca e completo, logo o sistema nunca e possivel e determinado (faca as contas).

== c)

O sistema de equacoes e:

$
  x + 2y + 3z = 1\ 
  x + 0 y + 3z = 2\ 
  2x + 2 y + 6z = 3
$

Esse sistema possui infinitas solucoes (verifique!).

= Questao 3 (Aprofundamento)

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
A matriz do sistema e:

$
  mat(
    1, 1, -2, 1;
    2, 1, 1, 2;
    2, 3, -9, alpha;
  )
$

Apos escalonamento (faca as contas), concluimos que o determinante da matriz e $2 + alpha$, entao quando $alpha = -2$, o sistema e impossivel.

== b)
A matriz do sistema e:

$
  mat(
    1, 1, -2, -6;
    2, 1, 1, -11;
    2, 3, -9, beta;
  )
$

Escalonando a matriz, concluimos que o sistema e possivel com $beta = -13$


== c)

A matriz do sistema e:

$
  mat(
    1, 1, -2, -6;
    2, 1, 1, -11;
    2, 3, -9, -13;
  )
$

Apos escalonamento, concluimos que o sistema e impossivel (verifique!).


