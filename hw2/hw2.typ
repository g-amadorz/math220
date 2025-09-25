// Always use 12pt - it is much easier to read
// Things written after '//' are comments and are ignored by the Typst compiler
// Anything mathematics related should be put in between '$' signs or in equation blocks

// Set some names and numbers here so we can use them below
#let myname = "Gabriel Amador Zarza" // ---------> Change this to your name
#let mynumber = "97852387" // ---------> Change this to your student number
#let hw = "2" // --------->  set this to the homework number

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

// QED symbol macro - use #qed at the end of proofs (right-aligned on same line)
#let qed = h(1fr) + box(width: 0.5em, height: 0.5em, fill: black, stroke: none)

== Solutions to homework #hw:

// Numbered list for homework problems
+ Let $a, b in ZZ$. Prove that if $a b$ is odd, then $a$ and $b$ are both odd.

  *Proof by Contrapositive:* Let $a,b in ZZ$. If $a$ or $b$ are even then $a b$ must be even.

  - *Case 1:* Assume that $a$ is even. Then $a$ must be of the form $2k$ for some $k in ZZ$. Consider the expression $a b$, so under the assumption that $a$ is even
  then $a b = 2k b$, factoring $2$ we see that $2k b = 2(k b)$. Since the product of two integers is an integer, we see that $2(k b) = 2i$ for some $i in ZZ$. Hence,
  $a b$ is of the form $2i$, thus $a b$ is even.

  - *Case 2:* Consider the first case, without loss of generality.

  Hence by contrapositive, if $a b$ is odd, then $a$ and $b$ are both odd.

  #qed

+ Prove that if $a in ZZ$, then $4 divides.not a^2 - 3$.

  *Proof:* Consider the cases $a equiv 0 (mod 4)$, $a equiv 1 (mod 4)$, $a equiv 2 (mod 4)$, and $a equiv 3 (mod 4)$.

  - *Case 1:* Assume that $a equiv 0 (mod 4)$. Then $a^2 -3 equiv 0^2 - 3(mod 4)$. Thus, $a^2 -3 equiv -3(mod 4)$.

  - *Case 2:* Assume that $a equiv 1 (mod 4)$. Then $a^2 -3 equiv 1^2 - 3(mod 4)$. Thus, $a^2 -3 equiv -2(mod 4)$.

  - *Case 3:* Assume that $a equiv 2 (mod 4)$. Then $a^2 -3 equiv 2^2 - 3(mod 4)$. Thus, $a^2 -3 equiv 1(mod 4)$.

  - *Case 4:* Assume that $a equiv 3 (mod 4)$. Then $a^2 -3 equiv 3^2 - 3(mod 4)$. Thus, $a^2 -3 equiv 2(mod 4)$.

  Hence by the previous cases, if $a in ZZ$ then $4 divides.not a^2 - 3$

  #qed

+ Let $x$ be a positive real number. Prove that if $2x - 1 / x > 1$, then $x > 1$.

  *Proof:* Assume that $2x - 1 / x > 1$ and $x$ is a positive real number.
  $
    2x - 1 / x &> 1 \
    2x^2 - 1 &> x \
    2x^2 - x - 1 &> 0 \
    (2x + 1)(x - 1) &> 0 \
  $

  Under the assumption that $x$ must be a positive real number, we know that $(2x + 1)$ must be positive so we can multiply it out leaving the expression $x - 1 > 0$. Hence, $x > 1$.

  #qed

+ Let $x in RR$. Then, prove that $x^2 + |x - 6| > 5$.

  *Proof:*

  #set par(first-line-indent: 1em)

  *Consider:*
  $
    |x - 6| = cases(
      x - 6 & "if" x >= 6,
      -x + 6 & "if" x < 6
    )
  $

  - *Case 1:* Let $x in RR$ and assume that $x < 6$. Now consider the fact that $x^2 >= 0$.
  $
    x^2 &>= 0 \
    x^2 + 1 &> 0 \
    x^2 - x + 1 &> 0 \
    x^2 - x + 6 -5 &> 0 \
    x^2 - x + 6 &> 5 \
    x^2 + |x - 6| &> 5 \
  $

  - *Case 2:* Let $x in RR$ and assume that $x >= 6$. Now consider the fact that $x^2 >= 0$.

  $
    x^2 &>= 0 \
    x^2 + x &> 0 \
    x^2 + x - 11 &> 0 \
    x^2 + x - 6 &> 5 \
    x^2 + |x - 6| &> 5 \
  $

  Hence, If $x in RR$ then $x^2 + |x-6| > 5$

  #qed

+ Let $n in ZZ$. Prove that if $5$ is not a factor of $(n^2 - 1)(n^2 - 4)$ then $5|n$.

  *Proof by Contrapositive:* Let $n in ZZ$. If $5divides.not n$ then $5$ is a factor of $(n^2 - 1)(n^2 - 4)$.

  #set par(first-line-indent: 1em)

  - *Case 1:* Assume that $n equiv 1(mod 5)$. So, when $n equiv 1(mod 5)$ then $(n^2 - 1)(n^2 - 4) equiv 0 (mod 5)$. Thus, $5$ is a factor of $(n^2 - 1)(n^2 - 4)$ when $n equiv 1(mod 5)$.

  - *Case 2:* Assume that $n equiv 2(mod 5)$. So, when $n equiv 2(mod 5)$ then $(n^2 - 1)(n^2 - 4) equiv 0 (mod 5)$. Thus, $5$ is a factor of $(n^2 - 1)(n^2 - 4)$ when $n equiv 2(mod 5)$.

  - *Case 3:* Assume that $n equiv 3(mod 5)$. So, when $n equiv 3(mod 5)$ then $(n^2 - 1)(n^2 - 4) equiv 40 (mod 5) equiv 0 (mod 5)$. Thus, $5$ is a factor of $(n^2 - 1)(n^2 - 4)$ when $n equiv 3(mod 5)$.

  - *Case 4:* Assume that $n equiv 4(mod 5)$. So, when $n equiv 4(mod 5)$ then $(n^2 - 1)(n^2 - 4) equiv 160 (mod 5) equiv 0 (mod 5)$. Thus, $5$ is a factor of $(n^2 - 1)(n^2 - 4)$ when $n equiv 4(mod 5)$.

  Hence, $5$ is a factor of $(n^2 - 1)(n^2 - 4)$ when $5 divides.not n$.
#qed

6. Let $x, y in ZZ$. Prove that $3 divides.not (x^3 + y^3)$ if and only if $3 divides.not (x + y)$.

  *Proof:*

  - *Case 1:* Proof by contrapositive. Let $x, y in ZZ$. If $3 divides (x^3 + y^3)$ then $3 divides (x + y)$. Assume that
    $3 divides (x^3 + y^3)$ such that $(x^3 + y^3) equiv 0 (mod 3)$ and consider the following.

    $
      (x^3 + y^3) &= (x + y)^3 - 3x y(x + y) \
      (x^3 + y^3) &equiv (x + y)^3 - 3x y(x + y) (mod 3) \
      (x + y)^3 - 3x y(x + y) &equiv 0 (mod 3) \
    $

    Since $-3 x y (x + y) equiv 0 (mod 3)$, then $(x + y)^3 equiv 0 (mod)3$.

    $
      (x + y)^3 &equiv 0 (mod 3) \
      (x + y) &equiv 0 (mod 3) \
      x + y &equiv 0 (mod 3) \
    $

    Thus by by contrapositive, if $3 divides (x^3 + y^3)$ then $3 divides (x + y)$.

  - *Case 2:* Proof by contrapositive. Let $x, y in ZZ$. If $3 divides (x + y)$ then $3 divides (x^3 + y^3)$.
    Assume that $3 divides (x + y)$ such that $(x + y) = 3 ell$ and consider the following.

    $
      (x^3 + y^3) &= (x + y)^3 - 3x y(x + y) \
      (x + y)^3 -3x y(x + y) &= (3 ell)^3 - 3x y(3 ell) \
      (3 ell)^3 - 3x y(3 ell) &= 3(9ell^3 - x y (3 ell)) \
    $



    Since the product and sum of an integer is an integer $3(9ell^3 - x y (3 ell)) = 3k$ for some $k in ZZ$.
    Thus by by contrapositive, if $3 divides (x + y)$ then $3 divides (x^3 + y^3)$.



  Hence by the two cases, if $3 divides.not (x^3 + y^3)$ if and only if $3 divides.not (x + y)$.


#qed

7. Bézout's identity: Let $a, b in ZZ$ such that $a$ and $b$ are not both zero. Then there exists $x, y in ZZ$ such that $a x + b y = gcd(a, b)$.

  For example, for $a = 5$ and $b = 7$, we see $gcd(a, b) = 1$ and we can take $x = 10$ and $y = -7$.

  Now, let $a, b, k in ZZ$ and assume that $a, b$ are not both zero. Then, using Bézout's identity, show that if $k divides.not gcd(a, b)$, then $k divides.not a$ or $k divides.not b$.

  *Proof by Contrapositive:*


  Let $a, b, k in ZZ$ and assume that $a, b$ are not both zero. If $k divides a$ and $k divides b$ then $k divides gcd(a, b)$.

  *Bézout's identity:* Let $a, b in ZZ$ such that $a$ and $b$ are not both zero. Then there exists $x, y in ZZ$ such that $a x + b y = gcd(a, b)$.


  Assume that $a, b in ZZ$ and assume that $a, b$ are not both zero. Assume that $k divides a$ and $k divides b$, such that
  $a = k c$ and $b = k d$ for some $c, d in ZZ$. By Bézout's identity, we know that there exists $x, y in ZZ$ such that $a x + b y = gcd(a, b)$.
  So $gcd(a, b) = (k c)x + (k d)y = k (c x + d y)$. Since $c, d, x, y in ZZ$, then
  $c x + d y = ell$ for some $ell in ZZ$, thus, $k divides ell$. Hence, $k divides gcd(a, b)$.

  #qed


