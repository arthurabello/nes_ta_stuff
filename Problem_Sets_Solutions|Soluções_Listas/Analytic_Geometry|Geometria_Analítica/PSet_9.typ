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
#let solution = thmproof("solution", "Solução")
#let problem = thmplain("problem", "Enunciado").with(numbering: none)

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
  Lista 9 - Soluções
])

#align(center, text(15pt)[
  Arthur Rabello Oliveira

  #datetime.today().display("[day]/[month]/[year]")
])

= Questão 1

#problem[
  Dê a equação da parábola de vértice $V = (2, 1)$ e diretriz $4x + 3y = 1$
]

#solution[
  Seja $P subset RR^2$ a parábola em questão e $r := {(x, y) in RR^2 | 4x + 3y = 1}$ a reta diretriz. Sabemos que o foco da parábola satisfaz:

  $
    F = V + p dot accent(v, arrow), accent(v, arrow) = n / norm(n)
  $

  Onde $n$ é o vetor normal da reta e $p$ é a distância do vértice à diretriz (parâmetro da parábola), então:

  $
    p = abs(4 dot 2 + 3 dot 1 - 1) / sqrt(4^2 + 3^2) = 2\

    accent(v, arrow) = (4, 3) / 5 = (4/5, 3/5)\ 
  $

  Então o foco fica:

  $
    F = (2, 1) + 2 dot (4 / 5, 3 / 5) = (18 / 5, 11 / 5)
  $

  Como $forall hat(p) in P, d(hat(p), F) = d(hat(p), r)$, temos:

  $
    d(hat(p), F) = sqrt((x - 18 / 5)^2 + (y - 11 / 5)^2) = d(hat(p), r) = abs(4x + 3x - 1) / 5
  $

  Ou equivalentemente:

  $
    25 dot [(x - 18 / 5)^2 + (y - 11 / 5)^2] = (4x + 3x - 1)^2
  $

  É a equação da parábola, convidamos o leitor a completar quadrados e simplificar a equação.
]



