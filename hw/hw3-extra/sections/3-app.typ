// sections/3-app.typ
#import "../co.typ": *
= Applications of the Theorem <app>

The pullback property finds applications across various areas of mathematics:

== Topological Applications

*Example 1*. (Quotient Spaces)
Let $X = RR^2$ and $Y = RR$ with the quotient map $pi: RR^2 to RR$ being the projection onto the first coordinate. For any continuous function $f: RR to RR$, the pullback $pi^*(f)$ gives us the function $h(x,y) = f(x)$, which is constant on vertical lines (the fibers of $pi$).

*Example 2*. (Identification Spaces)
Consider the torus $T^2$ as a quotient of the square $[0,1] times [0,1]$. The pullback property allows us to characterize continuous functions on the torus in terms of periodic functions on the square.

== Group Theory Applications

*Example 3*. (Normal Subgroups)
Let $G$ be a group and $N Norm G$ a normal subgroup. The quotient map $pi: G to G \/ N$ and any homomorphism $f: H to G\/N$ give rise to a pullback diagram:

#align(center)[#commutative-diagram(
    node((0, 0), $P$),
    node((0, 1), $H$),
    node((1, 0), $G$),
    node((1, 1), $G \/ N$),
    arr($P$, $H$, $p_1$),
    arr($P$, $G$, $p_2$),
    arr($H$, $G \/ N$, $f$),
    arr($G$, $G \/ N$, $pi$),
  )]

The pullback $P$ is isomorphic to the fiber product $H times_(G/N) G$.
