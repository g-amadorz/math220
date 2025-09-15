// Standard start of a Typst document
// Always use 12pt - it is much easier to read
// Things written after '//' are comments and are ignored by the Typst compiler
// Anything mathematics related should be put in between '$' signs or in equation blocks

// Set some names and numbers here so we can use them below
#let myname = "Gabriel Amador Zarza" // ---------> Change this to your name
#let mynumber = "97852387" // ---------> Change this to your student number
#let hw = "1" // --------->  set this to the homework number

// Page setup with margins similar to the LaTeX geometry package
#set page(
  paper: "us-letter",
  margin: (left: 25mm, right: 25mm, top: 3cm, bottom: 25mm),
  header: [
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [Mathematics 220], // course name as top-left
      [Homework #hw], // homework number in top-centre
      [#myname \ #mynumber] // name and number on top-right with line break
    )
    #line(length: 100%, stroke: 0.4pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.4pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [#myname], // name on bottom-left
      context [Page #counter(page).display()], // page in middle
      [#mynumber] // student number on bottom-right
    )
  ],
)

// Set font size to 12pt
#set text(size: 12pt)

// Set up math font and spacing
#set math.equation(numbering: none)

// Useful functions to define
// This function will make the left and right braces as tall as needed. Use it as #set_notation([1,2,3])
#let set_notation(content) = ${ #content }$

// We also redefine the negation symbol:
#let neg = $tilde.op$

// Document content starts here
Some useful Typst for you to use:

- For sets use the function we defined in the source:
  $
    #set_notation([1,2,3]), #set_notation([$emptyset$, #set_notation([4,5,6])]), #set_notation([$1 / 2, alpha / (1+beta)$])
  $
  it will format the braces nicely.

- Sometimes it is nice to write $ell$ instead of $l$ because it looks nice in formulas.

- For logic, Typst defines the symbols we need:
  $ neg P quad P or Q quad P and Q quad P arrow.r Q quad P arrow.l.r Q $
  We use $tilde.op$ for negation instead of the default negation symbol $not$.

- For a proof we can create a simple proof block:

  *Proof:* This is my proof. It is just missing a few details, but I'll put in an equation
  $ a + b = c $
  just because I can. #h(1fr) $square$

  Sometimes we want to give the proof a title. Here is a classic false-proof that $2=1$.

  *Not-quite-a-proof that two equals one:* Let $x,y$ be non-zero real numbers so that $x=y$. Then, multiplying by $x$ gives us
  $
    x^2 &= x y && "now subtract " y^2 \
    x^2 - y^2 &= x y - y^2 && "now factor" \
    (x-y)(x+y) &= y(x-y) && "divide by common factor of " (x-y) \
    x + y &= y && "since " x = y \
    2y &= y && "now divide by y" \
    2 &= 1
  $
  #h(1fr) $square$

- For truth tables you can use the following:
  #align(center)[
    #table(
      columns: 6,
      stroke: 1pt,
      [$A_1$], [$A_2$], [$A_3$], [$A_4$], [$A_5$], [$A_6$],
      [$a_(1 1)$], [$a_(1 2)$], [$a_(1 3)$], [$a_(1 4)$], [$a_(1 5)$], [$a_(1 6)$],
      [$a_(2 1)$], [$a_(2 2)$], [$a_(2 3)$], [$a_(2 4)$], [$a_(2 5)$], [$a_(2 6)$],
      [$a_(3 1)$], [$a_(3 2)$], [$a_(3 3)$], [$a_(3 4)$], [$a_(3 5)$], [$a_(3 6)$],
      [$a_(4 1)$], [$a_(4 2)$], [$a_(4 3)$], [$a_(4 4)$], [$a_(4 5)$], [$a_(4 6)$],
    )
  ]

- Remember to check the spelling of your submission.
- Also remember that you should not include your scratchwork unless a question specifically asks for it.
- Finally, please try to make your work look nice and neat and use 12pt font --- think about the reader!

Please do not include the above text in your homework solution --- we have just included it here to help you write your homework.

#line(length: 100%, stroke: 1pt)

== Solutions to homework #hw:

// Numbered list for homework problems
+ Your answer to question 1.

  (a) The sentence, "$2$ is even and $11$ is prime" is a true statement and can be translated to "$P and Q$",
  where $P$: "$2$ is even", and $Q:$ "$11$ is prime".

  (b) The sentence, "if $n$ is a multiple of $7$ and $4$, then it is a multiple of $14$" is a false statement and
  can be translated to "$(P(n) and Q(n)) => R(n)$", where $P(n)$: "n is a multiple of $7$", $Q(n):$ "n is a multiple of $4$", and
  $R(n)$: "$n$ is a multiple of $14$".

  (c) The sentence if "$5 <= x <= 17$" is an open statement, thus it has no truth value. It can be translated to $P(x)$, where $P(x)$:
  "$5 <= x <= 17$".

  (d) The sentence, "a real number $x$ is less than $-3$ or greater than $3$ if its square is greater than or equal to 9" is a true statement and
  can be translated to "$P(n) => (Q(n) or R(n)$", where $P(n)$: "the square of $x$ is greater than $9$", $Q(n):$ "$x$ is less than $-3$", and
  $R(n)$: "$x$ is greater than $3$".

+ Let $a in ZZ$, if $5a+11$ is odd then $9a+3$ is odd.

  *Proof:* Assume that $5a+11$ is odd, which implies that $5a+11 = 2k + 1$,
  for some integer $k in ZZ$.
  $
    5a + 11 &= 2k + 1 \
    a + 2(2a + 5) &= 2k \
    a + 2i &= 2k, &&i in ZZ \
    a &= 2(k-i) \
    a &= 2j, && j in ZZ
  $

  Thus, it follows that $a$ is an even integer. Now, consider the expression $9a + 3$.
  It follows that, $9a+3 = 9(2k) + 3 = 2(9k + 1) + 1$. Knowing that $9k+1$ is an integer,
  we can conclude that $9a+3=2ell+1, ell in ZZ$. Hence, $9a+3$ is an odd integer.

  #h(1fr) $square$

+ Let $n in RR$. If $3 | n - 2$ then $3 | n^2 + 2n + 8$.

  *Proof:* Assume that $3 | n - 2$ such that $n - 2 = 3ell$ and $ell in ZZ$. Now consider
  the expression $n^2 + 2n + 8$.
  $
    n^2 + 2n + 8 &= n^2 + 2n - 8 + 16 && "add 16 and subtract -8"\
    n^2 + 2n - 8 + 16 &= (n-2)(n+4) + 16 \
    (n-2)(n+4) + 16 &= (3ell)(n+4) + 15 + 1\
    (3ell)(n+4) + 16 &= 3(ell(n+4) + 5) + 1 \
    3(ell(n+4)+5) + 1 &= 3t && t in ZZ
  $
  Thus, we can see that the expression $n^2+2n+8$ is of the form $3t$ under the assumption
  that $3 | n-2$. Hence, $3 | n^2 + 2n + 8$.
+ Let $x,y in RR$. Show that $x y <= 1 / 2(x^2+y^2)$.

  *Proof:* Consider the fact that $q^2 >= 0, q in RR$. Now consider the expression $(x-y)^2$ such that $x, y in RR$.
  Meaning $(x-y)^2$ is of the form $q^2$, thus $(x-y)^2 >= 0$. Expanding the expression, we find $x^2 - 2x y + y^2 >= 0$ and after adding
  $2x y$ and divding both sides by $2$ we find the expression $1 / 2(x^2 + y^2) >= x y$. Hence, $x y <= 1 / 2(x^2 + y^2)$.
+ Your solution to question 5.
+ Your solution to question 6.
+ Your solution to question 7.
