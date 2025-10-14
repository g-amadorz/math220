// Always use 12pt - it is much easier to read
// Things written after '//' are comments and are ignored by the Typst compiler
// Anything mathematics related should be put in between '$' signs or in equation blocks
// Set some names and numbers here so we can use them below
#let myname = "Gabriel Amador Zarza" // ---------> Change this to your name
#let mynumber = "97853287" // ---------> Change this to your student number
#let hw = "4" // --------->  set this to the homework number
// Page setup with margins similar to the LaTeX geometry package
#set page(
  paper: "us-letter",
  margin: (left: 25mm, right: 25mm, top: 3cm, bottom: 25mm),
  header: [
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [Mathematics 220],
      // course name as top-left
      [Homework #hw],
      // homework number in top-centre
      [#myname \ #mynumber],
      // name and number on top-right with line break
    )
    #line(length: 100%, stroke: 0.4pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.4pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [#myname],
      // name on bottom-left
      context [Page #counter(page).display()],
      // page in middle
      [#mynumber],
      // student number on bottom-right
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

+ Recall that we say $n in ZZ$ is a perfect square when $n = k^2$ for some $k in ZZ$. Let $n in ZZ$.

  (a) Prove that if $n equiv 2 space (mod space 4)$ or $n equiv 3 space (mod space 4)$, then $n$ is not a perfect square.

  *Proof by Contrapositive:* If $n$ is a perfect square then $n equiv 2.not space (mod space 4)$ or $n equiv.not 3 space (mod space 4)$.
  Assume that $n$ is a perfect square $n = k^2$.

  - *Case 1:* Assume that $k$ is even such that $k = 2ell$, $ell in ZZ$ , and consider $n = 4ell^2$. By definition of divisibility by $4$, $4ell^2 equiv 0 (mod 4)$ which
    implies that $n equiv 0 (mod) 4$

  - *Case 2:* Assume that $k$ is odd such that $k = 2ell + 1$, $ell in ZZ$, and consider $n = 4ell^2 + 4ell + 1 = 4(ell^2 + ell) + 1$. Since $ell$ is an integer we $ell^2 + ell = m, m in ZZ$. By definition of divisibility by definition of $1 mod 4$,
    $4m + 1 equiv 1 (mod 4)$ which implies that $n equiv 1 (mod) 4$

  Hence in both cases and the contrapositive, we can conclude that if $n equiv 2 space (mod space 4)$ or $n equiv 3 space (mod space 4)$

  (b) Prove that if $n^2 + 1$ is a perfect square then $n = 0$. Hint: Factor a difference of squares and think about divisors.

  *Proof:* Assume that $n^2 + 1$ is a perfect square such that $n^2 + 1 = k^2$. We can say that $n^2 = k^2 - 1$.

  $
    k^2 - n^2 & = (k + n)(k - n) \
            1 & = (k + n)(k - n) \
  $

  Now consider the following cases, since we know that the only divisors of $1$ are $1$ and $-1$, we can conclude that either both $(k + n)$ and $(k - n)$
  are equal to $1$ or they are equal $-1$. Consider the following case work.

  - *Case 1:* Assume that $(k + n) = 1 "and" (k - n) = 1$.

    $
        k & = 1 - n \
          &         & "We rearrange" (k + 1) = -1
                      (1 - n) - n & = 1 \
      -2n & = 0
            n       &         = 0
    $


  - *Case 2:* Assume that $(k + n) = -1 "and" (k - n) = -1$.

    $
        k & = -1 - n \
          &          & "We rearrange" (k + 1) = -1
                       (-1 - n) - n & = -1 \
      -2n & = 0
            n        &          = 0
    $

  Hence, in either case that $(k+n) "or" (k-n)$ are equal to $1$ or $-1$ we can conclude that $n = 0$, thus if $n^2 + 1$ is a perfect square then $n = 0$.

  #qed

+ Recall Bézout's identity: Let $a, b in ZZ$ such that $a$ and $b$ are not both zero. Then there exists $x, y in ZZ$ such that $a x + b y = gcd(a, b)$. Use this result to prove the following result: Let $a, b, c in ZZ$ such that $gcd(a, b) = 1$. Then $(a | b c) ==> (a | c)$.

  *Proof:* Assume that $(a divides b c)$ such that $b c = a k$, for some $k in ZZ$. Now consider the fact that $gcd(a, b) = 1$ and by Bézout's identity we know that
  $a x + b y = 1$. Multiplying both sides by $c$ we find $a c x + b c y = c$ and using our assumption $a divides b c$ we know $a c x + a k y = c$.
  Factoring $a$ out of the result yields, $a (c x + b y ) = c$, and since we know that the result of $(c x + b y) in ZZ$ we can conclude that $a ell = c$.
  Hence $a divides c$.

  #qed

+ Let $P subset.eq NN$ be the set of prime numbers $P = #set_notation([2, 3, 5, 7, 11, ...])$. Determine whether the following statements are true or false. Prove your answers ("true" or "false" is not sufficient).

  1. $forall x in P, forall y in P, x + y in P$. False we prove negation.
    - Choose $x = 3, y = 5$, $x + y = 8$, and $8 in.not P$.

  2. $forall x in P, exists y in P$ such that $x + y in.not P$. This statement is true.

    *Proof:* Assume $x in P$ and choose $y = 23$. Consider the following case work.

    - *Case 1:* Assume that $x$ is even, such that $x = 2$, since $2$ is the only even number in $P$. $23 + 2 = 25$, thus if $x$ is even then $x + y in.not P$.

    - *Case 2:* Assume that $x$ is odd, such that $x = 2k + 1$. We can write $x + y$ as $(2k + 1) + 2(10) + 3 = 2k + 2(10) + 4$. Factoring $2$ out of our expression
      yields $2(ell)$, since we know that $x + y > 2$, since $x + y$ is even and and greater than two, we can conclude that $(x+y) in.not P$.

    Hence by both cases we can conclude that $forall x in P, exists y in P$ such that $x + y in.not P$.

  #qed

  3. $exists x in P$ such that, $forall y in P, x + y in P$. This statement is false, we can prove the negations.

    *Proof:* $forall x in P, exists y in P$ such that $x + y in.not P$. Assume $x in P$ and choose $y = 7$. Consider the following case work.

    - *Case 1:* Assume that $x$ is even, such that $x = 2$, since $2$ is the only even number in $P$. $7 + 2 = 9$, thus if $x$ is even then $x + y in.not P$.

    - *Case 2:* Assume that $x$ is odd, such that $x = 2k + 1$. We can write $x + y$ as $(2k + 1) + 2(4) + 1 = 2k + 2(10) + 2$. Factoring $2$ out of our expression
      yields $2(ell)$, since we know that $x + y > 2$, since $x + y$ is even and and greater than two, we can conclude that $(x+y) in.not P$.

    Hence by proving both cases of the negation we can conclude that our original statement is false.

  #qed

+ Prove the following statement: For every positive number $epsilon$ there is a positive number $M$ such that
  $ abs((2 x^2) / (x^2 + 1) - 2) < epsilon $
  whenever $x >= M$.

  *Proof:* Assume that $epsilon > 0$, let $M = sqrt(2 / epsilon)$ and assume $x >= M$. Consider the following.

  $
          x & >= M \
          x & >= sqrt(2 / epsilon) \
        x^2 & >= 2 / epsilon \
    epsilon & >= 2 / x^2 \
    epsilon & > 2 / (x^2 + 1)
  $

  Hence

  $
    abs((2 x^2) / (x^2+1) - 2) & = abs((2x^2 - 2x^2 - 2) / (x^2 + 1)) & = 2 / (x^2+1) & < epsilon
  $

  #qed

+ We say that a function $f : RR -> RR$ is continuous at $a in RR$ if $lim_(x -> a) f(x) = f(a)$. Let
  $
    f(x) = cases(
      x^2 sin(1 / x)\, "if" x eq.not 0,
      0\, "if" x = 0
    )
  $
  Is $f$ continuous at $x = 0$? (You may use the result: $forall x in RR, |sin x| <= 1$.)

  Note: Make sure to use the definition of a limit to justify your answer, namely: Let $a, L in RR$. The limit of a function $f$ as $x$ approaches $a$ is $L$, when (for $epsilon, delta, x in RR$)
  $ forall epsilon > 0, exists delta > 0 "s.t." (0 < |x - a| < delta) ==> (|f(x) - L| < epsilon). $
  Hint: You can make use of the fact that $|f(x)| <= x^2$.

  *Proof:* Assume that $epsilon > 0$, let $delta = sqrt(epsilon)$ and assume that $|0 < x - 0 < delta|, x in RR$. Consider the following.

  $
    0 & < x < sqrt(epsilon) \
    0 & < x^2 < epsilon \
  $

  Hence

  $
    |f(x)| & <= x^2 < epsilon & "and" |f(x) - 0| < epsilon \
  $


  Thus, we can conclude that since $lim_(x->0) f(x) = 0$ and $f(0) = 0$ it must be true that $f(x)$ is continuous.

  #qed

+ We say that a sequence $(x_n)$ converges to $L$ if
  $ forall epsilon > 0, exists N in NN, forall n in NN, (n > N) ==> |x_n - L| < epsilon. $
  Using the definition, prove that the sequence $(x_n)$ with
  $ x_n = (-1)^n + 1 / n $
  does not converge to any $L in RR$.

  *Proof:* Consider the definition of non-convergence. $exists epsilon > 0, forall N in NN, exists n in NN, (n > N) and |x_n - L| >= epsilon$. Choose $epsilon = 1 / 2$ and consider the following case work.

  - *Case 1:* Assume $L >= 0$

    Choose $n > N >= 2$ such that $n$ is odd.

    Then:
    $ x_n = (-1)^n + 1 / n = -1 + 1 / n < -1 + 1 / 2 = -1 / 2 $

    Since $L >= 0$ and $x_n < -1 / 2$:
    $ |x_n - L| = L - x_n > 0 - (-1 / 2) = 1 / 2 $

    Therefore $|x_n - L| >= 1 / 2$.

  - *Case 2:* Assume $L < 0$

    Choose $n > N >= 2$ such that $n$ is even.

    Then:
    $ x_n = (-1)^n + 1 / n = 1 + 1 / n > 1 > 1 / 2 $

    Since $L < 0$ and $x_n > 1 / 2$:
    $ |x_n - L| = x_n - L > 1 / 2 - L > 1 / 2 - 0 = 1 / 2 $

    Therefore $|x_n - L| >= 1 / 2$.

  Hence, for every $L in RR$ and every $N in NN$, we found $n > N$ such that $|x_n - L| >= 1 / 2$. Therefore, the sequence $(x_n)$ does
  not converge to any $L in RR$.

  #qed

