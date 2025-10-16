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
                          u_k & >= 1       &             "By I.H." \
                      u_k + 2 & >= u_k + 1 \
        (u_k + 2) / (u_k + 1) & >= 1       & "By I.H." u_k + 1 > 0 \
                      u_(k+1) & >= 1
      $

    - Upper Bound
      $
                          u_k & <= 2        &             "By I.H." \
                      u_k + 2 & <= 2u_k + 2 \
        (u_k + 2) / (u_k + 1) & <= 2        & "By I.H." u_k + 1 > 0 \
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
        sum_(i=1)^k 1 / i^2 & <= 2 - 1 / k
      $

    - *I.S.*

      $
                      sum_(i=1)^k 1 / i^2 & = 2 - 1 / k \
        sum_(i=1)^k 1 / i^2 + 1/(k + 1)^2 & <= 2 - 1 / k + 1/(k+1)^2 \
                  sum_(i=1)^(k+1) 1 / i^2 & <= 2 - 1/k + 1 / (k+1) \
                  sum_(i=1)^(k+1) 1 / i^2 & < 2 - 1/k + 2 / (k+1) \
                                          & < 2 + (-(k+1) + 2k)/k(k+1) \
                                          & < 2 + k/k(k+1) - 1/k(k+1) \
                                          & < 2 + k/k(k+1) \
      $

  Hence by induction $forall n in NN, sum_(i=1)^n 1/i^2 & <= 1 - 1/n$.














