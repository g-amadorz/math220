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


== Solutions to homework #hw:

// Numbered list for homework problems
+

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
    n^2 + 2n + 8 &= n^2 + 2n - 8 + 16 && \
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

+ Let $n ,a, b, c, d in ZZ$, with n > 0. If $n|a$ and $n|c$, then $n|(a b + c d + a c)$.

  *Proof:* Assume $n|a$ and $n|c$ and consider the expression $(a b + c d + a c)$ such that$n, a, b, c, d in ZZ$.
  It follows that $a = n k$ and $c = n ell$ for some integers $k, ell in ZZ$. Consider the following.
  $
    (a b + c d + a c) &= ((n k) b + (n ell) d + (n k)(n ell)) \
    ((n k) b + (n ell) d + (n k)(n ell)) &= n (k b + ell d + k ell) \
    n (k b + ell d + k ell) &= n q, && q in ZZ\
  $
  Thus, we can see that $(a b + c d + a c)$ under the assumption that $n|a$ and $n|c$ is of the form $n q$
  for some $q in ZZ$. Hence, $n|(a b + c d + a c)$.

+ Let $a in ZZ$. If $3a + 1$ is odd then $5a + 2$ is even.

  *Answer:* No, our friend's solution is incorrect under a false conclusion they made regarding the expression $2((5k) / 3 + 1)$.
  In their solution they are able to conclude that $5a + 2$ is even under the assumption that $3a + 1$ is odd. However in their
  process, they made a critical mistake by assuming that $(5k) / 3 + 1$ is an integer. However, they are not able to conclude that fact based on the current assumptions we know about $k$.
  This solution only works if it is certain that $3|k$, however that fact was never concluded.

  *Proof:* Assume that $3a + 1$ is odd such that $3a + 1 = 2ell + 1$ and $ell in ZZ$. Consider the expression $5a + 2$.
  $
    5a + 2 &= 2a + (3a + 1) + 1 \
    2a + (3a + 1) + 1 &= 2a + (2ell + 1) + 1 \
    2a + (2ell + 1) + 1 &= 2(a + ell + 1) \
    2(a + ell + 1) &= 2t && t in ZZ\
  $
  Thus, we can see that the expression $5a + 2$ is of the form $2t$ under the assumption that $3a + 1$ is odd. Hence, $5a + 2$ is even.
+ Solution for question $7$.

  *Proof:* Let $a > 0$ and $b > 0$ be funky numbers such that $a^ell$ and $b^k in ZZ$, for some $ell, k in NN$.
  Consider the expression $(sqrt(a b))^t$ and let $t = 2 k ell$ such that $t in NN$.

  $
    (sqrt(a b))^t &= (sqrt(a b))^(2 k ell) \
    (sqrt(a b))^(2 k ell) &= (a b)^(k ell) \
    (a b)^(k ell) &= a^(k ell) b^(k ell) \
    a^(k ell) b^(k ell) &= (a^ell)^k (b^k)^ell \
    (a^ell)^k (b^k)^ell &= i q && i, q in ZZ\
  $

  It follows that $(sqrt(a b))^t = i q$ such that $i, q in ZZ$. This follows since the product of an integer is an integer. Thus the expression $(sqrt(a b))^t$ with $t = 2k ell$ is of the form $i q$ under the assumption that $a^ell$ and $b^k$ are integers. Hence, $sqrt(a b)$ is a funky number.

