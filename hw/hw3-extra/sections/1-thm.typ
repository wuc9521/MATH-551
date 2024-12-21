#import "../co.typ": *;

= Pullback Property <pb>

== Pullbacks in Quotient Topologies <pb-qt>

*Definition*. Quotient map
Let $X$ and $Y$ be topological spaces. A map $f: X to Y$ is said to be a _quotient map_ if for any set $U subset Y$, $U$ is open in $Y$ iff $f^(-1) (U)$ is open in $X$.

By the way a quotient map is defined, it's obviously continuous. It's sometimes called _strongly continous_ for this reason.


*Theorem* (Pullback Property). Let $pi : X arrow.r Y$ be a quotient map. Let $Z$ be an arbitrary topological space. Then there is a bijection between

- $scr(H) := {h in Map(X, Z) | h "is constant on every" π^(-1) ({y}), y in Y}$, and;
- $scr(F) := #Map($Y$, $Z$)$,

which can be realized by the _pullback_

$
  pi^*:scr(F) &arrow.r scr(H)\
  f &mapsto f compose pi
$

Moreover, the following holds:
1. $f in scr(F)$ is continuous if and only if $h = π^*(f)$ in $scr(H)$ is continuous.
2. $f in scr(F)$ is a quotient map if and only if $h = pi^*(f)$ in $scr(H)$ is a quotient map.

_Proof_. For each $y in Y$, $h(pi^(-1) ({y}))$ is a singleton in $Z$, denoted the element in the singleton by $f(y)$, we have acturally defined a map implicitly by $f compose pi = h$. Since the choice of $h$ is arbitrary, $pi^*$ is surjective. Suppose $pi^*(f_1)=f_1 compose pi =h_1 = h_2 = f_2 compose pi = pi^*(f_2)$, let $x_0 in pi^(-1) (y_0)$ for any $y in Y$, then $f_1(y)=f_1 compose pi (x_0) = h_1(x_0)= h_2(x_0) = f_2(y)$, so $f_1 =f_2$, i.e. $pi^*$ is injective.

Let $U$ be any open set in $Z$, $h^(-1) (U)=(f compose pi)^(-1) (U) = pi^(-1) compose f^(-1) (U)$. Since $pi$ is a quotient map, $h^(-1) (U)$ is open in $X$ if and only if $f^(-1) (U)$ is open in $Y$ . Therefore $f compose pi$ is continuous if and only if $f$ is continuous. #place(right, $qed$)

\

In fact, the Pullback Property could be described using the following commutative diagram.

#align(center)[#commutative-diagram(
    node((0, 0), $X$),
    node((0, 1), $Z$),
    node((1, 0), $Y$),
    arr($X$, $Y$, $pi$),
    arr($X$, $Z$, $f compose pi$),
    arr($Y$, $Z$, $f$, label-pos: right),
  )]

== Analysis of the Crucial Assumption <pb-assump>

The most crucial assumption in the Pullback Property theorem is that $pi: X to Y$ must be a *quotient map*, not just any continuous surjection. This assumption is essential because:

1. It ensures that the topology on $Y$ is the finest topology making $pi$ continuous (the quotient topology)
2. It provides the necessary and sufficient conditions for lifting continuity through the pullback

*Proposition*. The theorem fails if we only assume $pi$ is a continuous surjection.

_Proof_. We construct a counterexample:

Let $X = RR$ with the usual topology, and let $Y = RR$ with the indiscrete topology. Define $pi: X to Y$ as the identity function. Then:

1. $pi$ is continuous (since every set in the indiscrete topology is open)
2. $pi$ is surjective (as the identity map)
3. However, $pi$ is not a quotient map because the preimage of any non-empty proper subset of $Y$ is open in $X$, but no such subset is open in $Y$

Now let $Z = RR$ with the usual topology, and consider:
- $h: X to Z$ defined by $h(x) = x$ (the identity function)
- $f: Y to Z$ defined by $f(y) = y$ (also the identity function)

Then:
1. $h = f compose pi$ (so $h$ is constant on the fibers of $pi$)
2. $h$ is continuous (identity map between spaces with usual topology)
3. But $f$ is not continuous (identity map from indiscrete to usual topology)

This violates the conclusion of the theorem that $h$ is continuous if and only if $f$ is continuous. Therefore, the quotient map assumption cannot be weakened to just continuous surjection. #place(right, $qed$)

\

*Remark*. This counterexample illustrates the universal property of quotient maps: they are precisely the maps that allow us to "lift" continuity through the pullback construction. Without this property, we lose the equivalence of continuity between the original and pulled-back functions.

== Pullbacks in Categories <pb-cat>

*Definition*. (Category) A category #cat("C") consists of:

+ A collection of objects
+ A collection of morphisms (or arrows) between objects
+ A composition operation for morphisms that is associative
+ An identity morphism for each object

The category #cat("Top") of topological spaces consists of:
+ Objects: Topological spaces
+ Morphisms: Continuous functions
+ Composition: Usual function composition
+ Identity: Identity function on each space

Let's understand how pullbacks generalize in categorical settings:

*Definition*. (Universal Property) In any category #cat("C"), a pullback of arrows $f: A to C$ and $g: B to C$ consists of:

1. Arrows $p_1: P to A$ and $p_2: P to B$ such that $f p_1 = g p_2$
2. For any object $Z$ with maps $z_1: Z to A$ and $z_2: Z to B$ satisfying $f z_1 = g z_2$, there exists a unique $u: Z to P$ making all diagrams commute.