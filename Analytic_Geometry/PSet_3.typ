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
  == a)
  O sistema possui matriz aumentada:

  $
    mat(
      1,2,1,2;
      -1,3,1,0;
      -1,1,1,1;
    )
  $

  Após eliminação de Gauss:
    
  $
    mat(
      1,2,1,2;
      0,5,2,2;
      0,0,0,-1;
    )$

  E isso da posto(A) = 2, Posto(A|b) = 3. Sistema impossível.

  == b)
  Matriz aumentada:
  $
    mat(
      1,1,1,-1;
      -2,-1,1,0;
      -2,7,1,-4;
    )$
  Escalonamento:
  $
    mat(
      1,1,1,-1;
      0,1,3,-2;
      0,0,0,0;
    )$
  Posto(A) = Posto(A|b) = 2. Sistema possível indeterminado.
  ]

  = Questão 2 (Introdutorios)

  #rect(width: auto, height: auto)[
  == a)
  Determinante da matriz coeficiente:
  $
  det(mat(
    1,-1,2;
    k,5,-4;
    -3,2,-1;
  )) = 5k - 18
  $
  • Se $5k - 18 != 0$: Sistema PD
  • Se $k = 18/5$:
    Posto(A) = 2, Posto(A|b) = 3 → Impossível

  == b)
  Matriz aumentada:
  $
    mat(
      -2,1,k,4;
      1,0,1,2;
      1,1,1,2;
    )$
  Escalonamento:
  $
    mat(
      1,0,1,2;
      0,1,k+2,8;
      0,0,k-1,0;
    )$
  • Se $k != 1$: Sistema PD
  • Se $k = 1$: Posto(A) = 2 = Posto(A|b) → PI
  ]

  = Questão 3 (Introdutorios)

  #rect(width: auto, height: auto)[
  Façamos a combinação linear:
  $
  lambda_1mat(1;3;2) + lambda_2mat(-2;-2;1) + lambda_3mat(-3;-1;4) = 0
  $
  Sistema resultante:
  $
  mat(
    1,-2,-3;
    3,-2,-1;
    2,1,4;
  ) dot mat(λ_1;λ_2;λ_3) = 0
  $
  Posto = 2 < 3 variáveis. Soluções não triviais existem. LD.
  ]

  = Questão 4 (Introdutorios)

  #rect(width: auto, height: auto)[
  == a)
  Posto(A) = Posto(A|b) = 3 → Determinado

  == b)
  Matriz aumentada:
  $
  mat(
    6,-1,3,6;
    -6,8,0,-10;
    2,-5,-1,4;
  )$
  Posto(A) = 2 < Posto(A|b) = 3 → Indeterminado

  == c)
  Matriz aumentada:
  $
  mat(
    1,1,1,1;
    3,-4,0,5;
    7,-1,-3,8;
  )$
  Posto(A) = 2 < Posto(A|b) = 3 → Impossível
  ]

  = Questão 5 (Aprofundamento)

  #rect(width: auto, height: auto)[
  Temos o sistema:
  $

    k x - y = 1\
    x - k y = 2k - 1
  $

  O mesmo em forma matricial:
  $
  mat(
    k,-1;
    1,-k
  ) dot mat(x;y) = mat(1;2k-1)
  $

  Determinante: $k^2 - 1$

  • $k != ±1$: SPD
  • $k = 1$: Inconsistente
  • $k = -1$: SPI
  ]

  = Questão 6 (Aprofundamento)

  #rect(width: auto, height: auto)[
  == a)
  Matriz aumentada:
  $
  mat(
    1,2,3,1;
    1,a,3,2;
    2,2+a,6,3;
  )$
  Escalonamento mostra inconsistência quando $a = 1$

  == b)
  Determinante sempre nulo. Nunca SPD.

  == c)
  Para $a = 0$:
  Solução: $x = 1, y = -1, z = 1$
  ]

  = Questão 7 (Aprofundamento)

  #rect(width: auto, height: auto)[
  == a)
  Sistema impossível quando $α != 5$

  == b)
  Determinante não nulo para $β != 0$. Solução para $β = -13$: $x = 1, y = -2, z = 0$

  == c)
  Para $α = 3$ e $β = -13$: Sistema possível indeterminado
  ]

  = Questão 8 (Aprofundamento)

  #rect(width: auto, height: auto)[
  == a)
  Casos:
  • $a != 1$: SPD
  • $a = 1$: SPI se $b = 1$, senão impossível

  == b)
  Solução única para $a != -1/3$
  ]

  = Questão 9 (Opcional)

  #rect(width: auto, height: auto)[
  Sistema:
  $
  mat(
    1,2,3;
    3,3,0;
    4,5,3;
  ) dot mat(x;y;z) = mat(11;9;20)
  $

  == a)
  Sistema homogêneo associado: $A x = 0$

  == b)
  Sim, possui infinitas soluções

  == c)
  Soluções do não-homogêneo = solução particular + solução homogênea

  == d)
  Sistema custo: $6x + y + z = 10$. Solução possível.
  ]

  = Questão 10 (Teóricos)

  #rect(width: auto, height: auto)[
  == 1
  Seja $S = {A_m , dots , A_k}$ subconjunto de ${A_1, dots, A_n}$. Se $S$ fosse LD, então $exists A_j in S$ t.q:

  $
    A_j = sum_(i !=  j) lambda_i A_i
  $

  Mas isso contradiria o fato de que ${A_1, dots A_n}$ é LI. Logo, $S$ é LI.

  == 2
  Exemplo: 
  $
  A = mat(1,0;0,0)\
  B = mat(0,1;0,0)
  $
  ]