#import "../co.typ": *;

= Pullback Property <pb>

== Pullbacks in Quotient Topologies <pb-qt>

*Definition*. Quotient map
Let $X$ and $Y$ be topological spaces. A map $f: X to Y$ is said to be a _quotient map_ if for any set $U subset Y$, $U$ is open in $Y$ iff $f^(-1) (U)$ is open in $X$.

By the way a quotient map is defined, it's obviously continuous. It's sometimes called _strongly continous_ for this reason.


*Theorem* (Pullback Property). Let $pi : X arrow.r Y$ be a quotient map. Let $Z$ be an arbitrary topological space. Then there is a bijection between

- $cal(H) := {h in Map(X, Z) | h "is constant on every" π^(-1) ({y}), y in Y}$, and;
- $cal(F) := #Map($Y$, $Z$)$,

which can be realized by the _pullback_

$
  pi^*:cal(F) &arrow.r cal(H)\
  f &mapsto f compose pi
$

Moreover, the following holds:
1. $f in cal(F)$ is continuous if and only if $h = π^*(f)$ in $cal(H)$ is continuous.
2. $f in cal(F)$ is a quotient map if and only if $h = pi^*(f)$ in $cal(H)$ is a quotient map.

_Proof_. For each $y in Y$, $h(pi^(-1) ({y}))$ is a singleton in $Z$, denoted the element in the singleton by $f(y)$, we have acturally defined a map implicitly by $f compose pi = h$. Since the choice of $h$ is arbitrary, $pi^*$ is surjective. Suppose $pi^*(f_1)=f_1 compose pi =h_1 = h_2 = f_2 compose pi = pi^*(f_2)$, let $x_0 in pi^(-1) (y_0)$ for any $y in Y$, then $f_1(y)=f_1 compose pi (x_0) = h_1(x_0)= h_2(x_0) = f_2(y)$, so $f_1 =f_2$, i.e. $pi^*$ is injective.

Let $U$ be any open set in $Z$, $h^(-1) (U)=(f compose pi)^(-1) (U) = pi^(-1) compose f^(-1) (U)$. Since $pi$ is a quotient map, $h^(-1) (U)$ is open in $X$ if and only if $f^(-1) (U)$ is open in $Y$ . Therefore $f compose pi$ is continuous if and only if $f$ is continuous. #place(right, $qed$)

In fact, the Pullback Property could be described using the following commutative diagram.

#align(center)[#commutative-diagram(
    node((0, 0), $X$),
    node((0, 1), $Z$),
    node((1, 0), $Y$),
    arr($X$, $Y$, $pi$),
    arr($X$, $Z$, $f compose pi$),
    arr($Y$, $Z$, $f$, label-pos: right),
  )]


== Pullbacks in Categories <pb-cat>


#align(center)[#commutative-diagram(
    node((0, 0), $X$),
    node((0, 1), $Y$),
    node((1, 0), $X \/ ker(f)$, "quot"),
    arr($X$, $Y$, $f$),
    arr("quot", (0, 1), $tilde(f)$, label-pos: right, "dashed", "inj"),
    arr($X$, "quot", $pi$),
  )]