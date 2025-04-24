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

= Problem 1 (Introductory)

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

= Problem 2 (Introductory)

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

= Problem 3 (Introductory)

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


= Problem 1 (In-Depth)

#rect(width: auto, height: auto)[
Find all $lambda in RR$ s.t $det(A - lambda I) = 0$, in:

== a)

$
  mat(
    0, 1, 2;
    0, 0, 3;
    0, 0, 0;
  )
$

== b)

$
  mat(
    1, 0, 0;
    -1, 3, 0;
    3, 2, -2  
  )
$
]

= Solution

== a)

The characteristic polynomial is:
$
  det(A - lambda I) = det(mat(
    -lambda, 1, 2;
    0, -lambda, 3;
    0, 0, -lambda
  )) = (-lambda) dot (-lambda) dot (-lambda) = -lambda^3.
$

$lambda = 0$ is the root.

== b)

The characteristic polynomial is:

$
  det(A - lambda I) = det(mat(
    1 - lambda, 0, 0;
    -1, 3 - lambda, 0;
    3, 2, -2 - lambda
  )) = (1 - lambda) dot (3 - lambda) dot (-2 - lambda) + 0 + 0\

  = (1 - lambda) dot (3 - lambda) dot (-2 - lambda).
$
The roots are $lambda = 1$, $lambda = 3$ and $lambda = -2$.

= Problem 2 (In-Depth)

#rect(width: auto, height: auto)[

Solve using Cramer's rule:

== a)

$
  x + 3y - z = 0\
  2y + 2z = 0\
  x + y + z = 0
$

== b)

$
  x + y - z = 0\
  2x + y + z = 1\
  3x - y + z = 1
$
]

= Solution

== a)

Since $b = 0$, all determinants $D_i$ are $0$, therefore the only solution is $x = y = z = 0$.

== b)

The determinant of the main matrix is (using cofactor expansion):

$
  det(A) = 1 dot det(mat(
    1, 1;
    -1, 1
  )) - 1 * det(mat(
    2, 1;
    3, 1
  )) + (-1) dot det(mat(
    2, 1;
    3, -1
  ))\
  = 1 dot (1 + 1) -1 dot (2 - 3) -1 dot (2 - 3) = 2 - (-1) + 5 = 8.
$

And the determinants $D_x, D_y, D_z$ are:

$
  D_x = det(mat(
    0, 1, -1;
    1, 1, 1;
    2, 1, 1
  )) = 2,\

  D_y = det(mat(
    1, 0, -1;
    2, 2, 1;
    3, -1, 1
  )) = 1,\

  D_z = det(mat(
    1, 1, 0;
    2, 2, 2;
    3, -1, 3
  )) = 3.
$

Therefore:

$
  x = D_x / D = 2/8 = 1/4,\
  y = D_y / D = 1/8 = 1/8,\
  z = D_z / D = 3/8 = 3/8.
$

= Problem 3 (In-Depth)

#rect(width: auto, height: auto)[

For which values of $k in RR$ the matrices below are singular (non-invertible)?

== a)

$
  mat(
    1, 2, 4;
    3, 1, 6;
    k, 3, 2
  )
$

== b)

$
  mat(
    k - 3, -2;
    -2, k - 2
  )
$
]

= Solution

== a)

$
  det(mat(
    1, 2, 4;
    3, 1, 6;
    k, 3, 2
  )) = 8 k + 8, "with" k = -1 "the determinant is 0".
$

== b)

The determinant of the $2 times 2$ matrix is clearly:

$
  det(A) = k^2 - 5k + 2
$

Finding the roots:

$
  k^2 - 5k + 2 = 0\
  k = (5 +/- sqrt(17)) / 2. 
$

= Problem 1 (Advanced)

#rect(width: auto, height: auto)[
Answer with true or false, justifying your answer:

== a)

If $B = A A^T A^(-1)$, then $det(A) = det(B)$.

== b)

$det(A + B) = det(A) + det(B)$
]

= Solution

== a)

It is True:

$
  det(A) = det(A A^T A^(-1)) = det(A) dot det(A^T) dot det(A^(-1)) = det(A) dot det(A) dot 1 / {det(A)} = det(A).
$

== b)

It is false, a counter-example is:

$
  A = mat(
    1, 0;
    0, 1
  ), B = mat(
    2, 0;
    0, 2
  )
$

Then:

$
  det(A + B) = det(mat(
    3, 0;
    0, 3
  )) = 9 != det(A) + det(B) = 1 + 4 = 5.
$

= Problem 2 (Optional)

#rect(width: auto, height: auto)[
Show that $A^T = A^(-1) => det(A) = plus.minus 1$.
]

= Solution

If $A^T = A^(-1)$, then:

$
  det(A^T) = det(A^(-1)) = 1 / det(A)\
  <=> det(A^T) = det(A) = 1 / det(A)\
  <=> det(A)^2 = 1\
  <=> det(A) = plus.minus 1.
$

= Problem 3 (Optional)

#rect(width: auto, height: auto)[
Show that $det(alpha A) = alpha^n det(A)$, where $alpha in RR, A in RR^(n times n)$
]

= Solution

We know that:

$
  det(alpha A) = det( alpha I dot A) = det(alpha I) dot det(A) = alpha^n dot det(A).
$
