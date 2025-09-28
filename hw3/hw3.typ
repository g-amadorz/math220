// Always use 12pt - it is much easier to read
// Things written after '//' are comments and are ignored by the Typst compiler
// Anything mathematics related should be put in between '$' signs or in equation blocks

// Set some names and numbers here so we can use them below
#let myname = "Gabriel Amador Zarza" // ---------> Change this to your name
#let mynumber = "97852387" // ---------> Change this to your student number
#let hw = "0" // --------->  set this to the homework number

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
  (a) $exists a in ZZ, ((6 | a and 8 | a) and 48 divides.not a)$. This statement is true choose $a = 24$, which is divisible by $8$ and $6$.

  (b) $forall x in ZZ$ such that $(x <= 84)$ or

  (c) $forall x,y in RR$ such that $(x^2 < y^2 or x > y)$.

+
  For $a in RR$, we define the set $S_a = {x in RR : (x >= 0) and (x < a - 2)}$.

+
  (a)

  (b)


+
  $forall a in ZZ, exists b in ZZ$ such that $a^b + b^2 equiv 1 mod 3$.

  *Proof:*



