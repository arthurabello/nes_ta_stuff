#let rank = "rank"

#set page(numbering: "1")

#align(right, text(12pt)[
  NES
])

#align(center, text(23pt)[
  Problem Set 5, Analytic Geometry (Solutions)
])
#align(center, text(16pt)[
  Arthur Rabello & Gabriel Carneiro
    
  #datetime.today().display("[day]/[month]/[year]")
])

= Problem 1

#rect(width: auto, height: auto)[
Calculate the determinant of the matrix $A$ below using Sarrus’s rule:

$
  A = mat(
    2, 1, 3;
    3, 2, 5;
    1, 4, 3
  )
$
]

= Solution:

The expanded matrix is:

$
  A' = mat(
    2, 1, 3, |, 2, 1;
    3, 2, 5, |, 3, 2;
    1, 4, 3, |, 1, 4
  )
$

And the determinant is:

$
  det(A) = 2 dot 2 dot 3 + 1 dot 5 dot 1 + 3 dot 3 dot 4 - (3 dot 2 dot 1 + 2 dot 5 dot 4 + 1 dot 3 dot 2)\
  = 12 + 5 + 36 - (6 + 40 + 6) = 53 - 52 = 1.
$

= Problem 2

#rect(width: auto, height: auto)[
Calculate the determinant and the trace of the following matrices:

== a)

$
  mat(
    3, -1;
    4, 2
  )
$

== b)

$
  mat(
    1, 3, 4;
    5, 2, -3;
    1, 4, 2
  )
$

== c)

$
  mat(
    -1, -4, -6;
    0, -2, -5;
    0, 0, -3
  )
$
]
= Solution:

== a)

The determinant is:

$
  det(mat(3, -1; 4, 2)) = 3 dot 2 - (-1) dot 4 = 6 + 4 = 10.
$

The trace is $3 + 2 = 5$.

== b)

The determinant is:

$
  det(mat(
    1, 3, 4;
    5, 2, -3;
    1, 4, 2
  )) = det(mat(
    1, 3, 4, | , 1, 3;
    5, 2, -3, | , 5, 2;
    1, 4, 2, | , 1, 4
  ))\
  = 1 dot 2 dot 2 + 3 dot -3 dot 1 + 4 dot 5 dot 4 - (4 dot 2 dot 1 + 3 dot -3 dot 5 + 1 dot 2 dot 3)\
  = 49.
$

The trace is $1 + 2 +2 = 5$.

== c)

The determinant is:

$
  det(mat(
    -1, -4, -6;
    0, -2, -5;
    0, 0, -3
  )) = det(mat(
    -1, -4, -6, | , -1, -4;
    0, -2, -5, | , 0, -2;
    0, 0, -3, | , 0, 0
  ))\

  = -1 dot -2 dot -3 + -4 dot -5 dot 0 + -6 dot 0 dot 0 - (0 dot -2 dot 0 + -4 dot -5 dot 0 + -6 dot -2 dot 0)\

  = -6 + 0 + 0 - (0 + 0 + 0) = -6.
$

The trace is $-1 - 2 - 3 = -6$.

= Problem 3

#rect(width: auto, height: auto)[
If $det(A) = -3$, find:
- $det(A^2)$
- $det(A^3)$
- $det(A^-1)$
- $det(A^T)$
]

= Solution

Since $det(A dot B) = det(A) dot det(B)$, and $det(A) = det(A^T)$ we have:

- $det(A^2) = det(A) dot det(A) = (-3) dot (-3) = 9$.

- $det(A^3) = det(A) dot det(A) dot det(A) = (-3) dot (-3) dot (-3) = -27$.

- $det(A^-1) = 1/ {det(A)} = 1 / (-3)$.

- $det(A^T) = det(A) = -3$.

= Problem 4

#rect(width: auto, height: auto)[
If $A$ and $B$ are $n times n$ matrices such that $det(A) = -2$ and $det(B) = 3$, calculate $det(A^T dot B^-1)$
]

= Solution

We have:
$
  det(A^T dot B^-1) = det(A^T) dot det(B^-1) = det(A) dot 1 / {det(B)} = -2 / 3.
$

