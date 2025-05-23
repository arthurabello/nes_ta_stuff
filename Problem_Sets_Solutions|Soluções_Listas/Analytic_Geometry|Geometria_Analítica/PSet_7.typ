#import "@preview/ctheorems:1.1.3": *
#import "@preview/lovelace:0.3.0": *
#show: thmrules.with(qed-symbol: $square$)

#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages, stroke: 1pt + luma(100))

#set page(width: 21cm, height: 30cm, margin: 1.5cm)
#set heading(numbering: "1.1.")

#set par(
  justify: true
)

#let theorem = thmbox("theorem", "Teorema")
#let corollary = thmplain(
  "corollary",
  "Corolário",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definição", inset: (x: 1.2em, top: 1em))
#let example = thmplain("example", "Exemplo").with(numbering: none)
#let proof = thmproof("proof", "Demonstração")

#set math.equation(
  numbering: "(1)",
  supplement: none,
)

#set page(numbering: "1")

#show ref: it => {
  // provide custom reference for equations
  if it.element != none and it.element.func() == math.equation {
    // optional: wrap inside link, so whole label is linked
    link(it.target)[eq.~(#it)]
  } else {
    it
  }
}
// ATALHOS:

#let proj = $"proj"$
#let intern(var1, var2) = $angle.l var1, var2 angle.r$
#let span = $"span"$

#align(right, text(12pt)[
  NES - Geometria Analítica
])


#align(center, text(22pt)[
  Lista 7 - Soluções
])

#align(center, text(15pt)[
  Arthur Rabello Oliveira

  #datetime.today().display("[day]/[month]/[year]")
])

= Exercícios Introdutórios

1. (a) Temos $intern(v, w) = a + 3$, logo $v perp w <=> a = -3$

2. (a) 2 vetores em $RR^3$ geram, no máximo um plano. ($RR^2$ tem dimensão 2, e $RR^3$ tem dimensão 3)

(b) $V = {v_1, v_2, v_3}$ é base de $RR^3$ se e somente se $V$ for LI e gerador. Sabemos que $3$ vetores LI em $RR^3$ geram $RR^3$. Como $v_1, v_2$ são LI. A condição é que $v_3$ não seja combinação linear de $v_1, v_2$. 

(c) $v_3 = (1, 0, 0)$ não é combinação de nenhum dos anteriores. Logo $V = {v_1, v_2, v_3}$ forma base de $RR^3$

3. (a) Forme a matriz:

$
  A = mat(
    4, 2, -2;
    2, 1, -1;
    -3, -2, 0
  )
$

E note que:

$
  det(A) = 4 dot 2 dot 0 + 2 (-1) (-3) +\
  
  (-2) dot 2 dot (-2) - (-2) dot 1 dot (-3) - 2 dot 2 dot 0 - 4 dot (-1) dot (-3) = 0
$

Então $N(A)$ é não-trivial. Logo suas colunas $v_i$ não formam base de $RR^3$.

(b) As 2 primeiras componentes de $v_1$ são precisamente e respectivamente o dobro das 2 primeiras componentes de $v_2$ Mas $v_1 != 2v_2 => $ são LI

= Exercício de Aprofundamento


+ (a) Dado que a fórmula de projeção é:

$
  proj_a b = a dot (a^T b) / (a^T a) = a dot intern(a, b) / (intern(a, a))
$

Fazemos:

$
  w_1 = v_1 = (1, 1, 1)\
  w_2 = v_2 - proj_(w_1) v_2 = (0, 1, 1) - (1, 1, 1) dot intern((1, 1, 1), (0, 1, 1)) / (intern((1, 1, 1), (1, 1, 1)))\

  = (0, 1, 1) - (1, 1, 1) dot 2 / 3\
  = (0, 1, 1) - (2/3, 2/3, 2/3)\
  = (-2/3, 1/3, 1/3) = w_2
$

Agora para $w_3$:

$
  w_3 = v_3 - proj_(w_1) v_3 - proj_(w_2) v_3\
  = (1, 2, 3) - (1, 1, 1) dot intern((1, 1, 1), (1, 2, 3)) / (intern((1, 1, 1), (1, 1, 1))) - (-2/3, 1/3, 1/3) dot intern((-2/3, 1/3, 1/3), (1, 2, 3)) / (intern((-2/3, 1/3, 1/3), (-2/3, 1/3, 1/3)))\

  = (1, 2, 3) - (1, 1, 1) dot 6 / 3 - (-2/3, 1/3, 1/3) dot 3 / 2 = (1, 2, 3) - (2, 2, 2) - (-1, 1/2, 1/2) = (0, -1/2, 1/2) = w_3.
$

(b) Temos:

$
  u_1 = ((1, 1, 1)) / sqrt(3) = (3 / sqrt(3), 3/sqrt(3), 3/sqrt(3))\

  u_2 = ((-2/3, 1/3, 1/3)) / sqrt(2/3) = (- sqrt(6)/3, sqrt(6)/6, sqrt(6)/6)\

  u_3 = (0, -1/2, 1/2) / sqrt(1/2) = (0, -sqrt(2)/2, sqrt(2)/2)
$

(c) $w_1, dots, w_3$ são claramente normais. Nos falta mostrar que são LI e ortogonais. Note que:

$
  intern(w_1, w_2) = intern(u_2 - intern(u_2, w_1) / (intern(w_1, w_1)), w_1) = intern(u_2, w_1) - intern(intern(u_2, w_1) / (intern(w_1, w_1)), w_1)\
  
  = intern(u_2, w_1) - intern(u_2, w_1) / intern(w_1, w) dot intern(w_1, w_1) = intern(u_2, w_1) - intern(u_2, w_1) = 0
$

Analogamente $w_2, w_3$ são ortogonais. Assim o conjunto $W = {w_1, w_2, w_3}$ é ortonormal. Vamos mostrar que é L.I

Como $w_1 perp w_2$, são LI. Basta mostrar que $forall phi, psi in RR$, $w_3 perp (phi w_1 + psi w_2)$. Prossigamos:

$
  intern(w_3, phi w_1 + psi w_2) = intern(w_3, phi w_1) + intern(w_3, psi w_2)\
  = phi intern(w_3, w_1) + psi intern(w_3, w_2) = 0
$

O que completa a prova.

= Exercícios Avançados

1. Para achar uma base ortonormal do plano $x + y + z = 0$, tome um vetor qualquer do plano, seja ele $v = (1, 2, -3)$, que normalizado fica v = $(1/sqrt(14), 2/sqrt(14), -3/sqrt(14))$. Note que no plano, $z = -(x + y)$. Então a _forma_ de um vetor $w$ no plano é $w = (x, y, -(x + y))$. Queremos $v perp w$, então:

$
  intern(v, w) = x / sqrt(14) + (2y) / sqrt(14) + (3(x + y))/ sqrt(14) = (4x + 5y) / sqrt(14) = 0\

  <=> 4x + 5y = 0 => y = -4/5 x
$

Se tomarmos $x = 1$, por exemplo, temos $y = -4/5$, logo $w = (1, -4/5, 3/5)$. O vetor normalizado e $v$ formam uma base ortonormal do plano por construção.

2. Podemos escrever: 

$ 
  w = sum_(i = 1)^n phi_i w+i 
$

E note que pela bilinearidade do produto interno:

$
  intern(v, w) = sum_(i = 1)^n phi_i intern(v, w_i) = 0
$

O que conclui a prova ablublublé

