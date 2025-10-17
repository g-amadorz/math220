// Always use 12pt - it is much easier to read
// Things written after '//' are comments and are ignored by the Typst compiler
// Anything mathematics related should be put in between '$' signs or in equation blocks

// Set some names and numbers here so we can use them below
#let myname = "Gabriel Amador Zarza" // ---------> Change this to your name
#let mynumber = "97853287" // ---------> Change this to your student number
#let hw = "5" // --------->  set this to the homework number

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

// Numbered list for homework problems
+ *Solutions*

  - (a) $u_1 = 4 / 3, u_2 = 10 / 7, u_3 = 24 / 17$

  - (b) _Proof_

    *Proof by Induction:*

    *Base Case:* $n = 0$, $u_0 = 2$ so $1 <= u_0 <= 2$. Base case holds.

    *I.H.* for $k >= 0,$ $1 <= u_k <= 2$

    *I.S.*

    - Lower Bound

      $
        u_k & >= 1 & "By I.H." \
        u_k + 2 & >= u_k + 1 \
        (u_k + 2) / (u_k + 1) & >= 1 & "By I.H." u_k + 1 > 0 \
        u_(k+1) & >= 1
      $

    - Upper Bound
      $
        u_k & <= 2 & "By I.H." \
        u_k + 2 & <= 2u_k + 2 \
        (u_k + 2) / (u_k + 1) & <= 2 & "By I.H." u_k + 1 > 0 \
        u_(k+1) & <= 2
      $

    Hence, by induction $1 <= u_k <= 2$.

+ *Solution*

  - *Proof by Induction:*

    - *Base Case:* $n = 1$, $1(1+1) / 2 = 1^3$, $1=1$. Base case holds.

    - *I.H.*

      $
        sum_(k=1)^ell k^3 & = (ell(ell+1) / 2)^2
      $

    - *I.S.*

      $
        sum_(k=1)^ell k^3 & = (ell(ell+1) / 2)^2 \
        sum_(k=1)^ell k^3 + (ell + 1)^3 & = (ell(ell+1) / 2)^2 + (ell + 1)^3 \
        sum_(k=1)^(ell + 1) k^3 & = (ell^2(ell+1)^2 + 4(ell + 1)^3) / 4 \
        & = ((ell + 1)^2 (ell^2 + 4ell + 4)) / 4 \
        & = ((ell + 1)^2 (ell+2)^2) / 4 \
        & = (((ell + 1)(ell+2)) / 2)^2 \
      $


  Hence by induction $forall n in NN, sum_(k=1)^ell k^3 & = (ell(ell+1) / 2)^2$.

+
  - *Proof by Induction:*

    - *Base Case:* $n = 1$, $1 / 1 <= 2 - 1$, $1<=1$. Base case holds.

    - *I.H.*

      $
        sum_(i=1)^k 1 / i^2 & < 2 - 1 / k
      $

    - *I.S.*

      $
        sum_(i=1)^k 1 / i^2 & < 2 - 1 / k \
        sum_(i=1)^k 1 / i^2 + 1 / (k + 1)^2 & < 2 - 1 / k + 1 / (k+1)^2 \
        sum_(i=1)^(k+1) 1 / i^2 & < 2 - 1 / k + 1 / (k+1) \
        sum_(i=1)^(k+1) 1 / i^2 & < 2 - 1 / k + 2 / (k+1) \
        & < 2 + (-(k+1) + 2k) / k(k+1) \
        & < 2 + k / k(k+1) - 1 / k(k+1) \
        & < 2 + k / k(k+1) \
        S_(k+1) & < 2 + 1 / (k+1) \
      $

  Hence by induction $forall n in NN, sum_(i=1)^n 1 / i^2 & <= 2 - 1 / n$

+
  - Solutions

  (a) $u_(n+1) - 5^2 dot u_n = -17 dot 2^(3n+1)$

  (b) _Proof_

  *Proof by Induction*

  *Base Case* $n = 0, 3 dot 5^(0 + 1) + 2^(0 + 1) = 17$ and $17 (mod 17) = 0$. Base case holds.

  *I.H.* $forall k in ZZ, k >= 0, u_k = 3 dot 5^(2k + 1) + 2^(3k + 1) "s.t." 17 divides u_k$.

  _Lemma_: $forall n in NN, u_(n+1) = -17 dot 2^(3n+1) + 5^2 dot u_n$

  *I.S.*

  $
    u_(k+1) = & -17 dot 2^(3n+1) + 5^2 dot u_k & "By Lemma" \
    = & -17 dot 2^(3n+1) + 5^2 dot 17i & "By I.H. and" i in ZZ \
    = & 17(-2^(3n+1)) + 17(5^2 dot i) \
    = & 17(-2^(3n+1) + 5^2 dot i) \
    = & 17ell & ell in ZZ \
  $


  Hence by induction, $17 divides u_n$.

+

  *Proof by Induction*

  *Base Case* $n = 1, 2^(1^2) > 1!$ so $2 > 1$. Base case holds.

  *I.H.* $forall k in NN, 2^(k^2) > k!$.


  - *Sub Induction:* $forall t in NN, 2^(2t + 1) > (t + 1)$

    *Base Case:* $t = 1, 2^(2(1) + 1) > 2$. Base case holds.

    *I.H.* $forall s in NN, 2^(2s + 1) > (s + 1)$

    *I.S.*

    $
      2^(2s + 1) & > (s + 1) \
      2 dot 2^(2s +1) & > 2 (s + 1) \
      2^(2s + 2) & > 2s + 2 \
      2^(2s + 2) & > s + 2 \
    $

    Thus if $P(s)$ then $P(s+1)$.

    Hence by induction, $forall t in NN, 2^(2t + 1) > t + 1$

  _Lemma_: $forall k in NN, 2^(2k + 1) > k + 1$

  *I.S.*

  $
    2^(k^2) & > k! \
    2^(k^2) dot (k + 1) & > k! dot (k + 1) & quad k >= 1 \
    2^(k^2) dot 2^(2k + 1) & > 2^(k^2) dot (k+1) > (k+1)! & quad "By Lemma" \
    2^(k^2 + 2k + 1) & > (k+1)! \
    2^(k+1)^2 & > (k+1)! \
  $

  Thus if $P(k)$ then $P(k+1)$

  Hence by induction, $forall n in NN, 2^(n^2) > n!$




+
  - *Proof by Induction:*

    - *Base Case:* $n = 1, n = 2$ and $a_1 = 3, a_2 = 12$ so $2^1 < 3 < 4^1$ and $2^2 < 12 < 4^2$. Base case holds.

    - *I.H.*
      $
        forall k in NN, k >= 1, 2^k < a_k < 4^k "s.t." a_k = 2a_(k-1) + a_(k-2) + a_(k-3)
      $





      _Lemma_ : $forall n in NN, n >= 3, a_(n+1) & = 5a_(n-1) + 3a_(n-2) + 2a_(n-3)$
      $
        a_(n+1) & = 2a_(n) + a_(n-1) + a_(n-2) \
        a_(n+1) & = 4a_(n-1) + 2a_(n-2) + 2a_(n-3) + a_(n-1) + a_(n-2) \
        a_(n+1) & = 5a_(n-1) + 3a_(n-2) + 2a_(n-3) \
      $

    - *I.S.*

      Consider

      $
        2^k & < a_k \
        2 dot 2^k & < 2 dot a_k \
        2^(k+1) & < 2 dot (2a_(n-1) + a_(n-2) + a_(n-3)) \
        2^(k+1) & < 4a_(n-1) + 2a_(n-2) + 2a_(n-3) \
        2^(k+1) & < 4a_(n-1) + 2a_(n-2) + 2a_(n-3) < 5a_(n-1) + 3a_(n-2) + 2a_(n-3) \
        2^(k+1) & < 5a_(n-1) + 3a_(n-2) + 2a_n(n-3) = a_(k+1) & "By Lemma" \
        2^(k+1) & < a_(k+1) \
      $

      And

      $
        a_k & < 4^k \
        4 dot a_k & < 4 dot 4^k \
        4 dot a_k & < 4^(k+1) \
        4 dot (2a_(k-1) + a_(k-2) + a_(k-3)) & < 4^(k+1) \
        8a_(k-1) + 4a_(k-2) + 4a_(k-3) & < 4^(k+1) \
        5a_(k-1) + 3a_(k-2) + 2a_(k-2) & < 8a_(k-1) + 4a_(k-2) + 4a_(k-3) < 4^(k+1) \
        5a_(k-1) + 3a_(k-2) + 2a_(k-2) = a_(k+1) & < 4^(k+1) & "By Lemma" \
        a_(k+1) & < 4^(k+1) \
      $

  Hence by induction $forall n in NN, n >= 1, 2^n < a_n < 4^n$

