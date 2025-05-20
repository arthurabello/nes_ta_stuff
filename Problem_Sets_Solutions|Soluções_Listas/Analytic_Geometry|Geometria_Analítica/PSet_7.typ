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
= Exercício de Aprofundamento

+ Sejam $v_1 = (1, 1, 1), v_2 = (0, 1, 1), v_3 = (1, 2, 3) in RR^3$.

    (a) Encontre os vetores $w_1, w_2, w_3$ definidos por:

    $
      w_1  = v_1\
      w_2 = v_2 - proj_(w_1) v_2\
      w_3 = v_3 - proj_(w_1) v_3 - proj_(w_2) v_3
    $

    (b) Encontre os vetores:

    $
      u_1 = w_1 / norm(w_1), u_2 = w_2 / norm(w_2), u_3 = w_3 / norm(w_3).
    $

    (c) Prove que $U = {u_1, u_2, u_3}$ é uma base ortonormal de $RR^3$.



*Solução:*

+ (a) Dado que a fórmula de projeção é:

$
  proj_a b = a dot (a^T b) / (a^T a) 
$

Fazemos:

$
  w_1 = v_1 = (1, 1, 1)\
  w_2 = v_2 - proj_(w_1) v_2 = (0, 1, 1) - (1, 1, 1) dot intern((1, 1, 1), (0, 1, 1)) / (intern((1, 1, 1), (1, 1, 1)))\

  = (0, 1, 1) - (1, 1, 1) dot 2 / 3\
  = (0, 1, 1) - (2/3, 2/3, 2/3)\
  = (-2/3, 1/3, 1/3) = w_2
$

Para $w_3$


= Exercícios Avançados
