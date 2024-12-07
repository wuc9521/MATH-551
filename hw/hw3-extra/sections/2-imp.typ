#import "../co.typ": *;

= Importance of the Theorem <importance>

*Definition*. (Pullback) In any category $cat(C)$, a pullback of arrows $f:A to C$ and $g: B to C$ consists of arrows $p_1:P to A$ and $p_2: P to B$ such that $f p_1 = g p_2$, and universal with this property. i.e. Given any $z_1: Z to A$ and $z_2: Z to B$ with $f z_1 = g z_2$, there exists a unique $u: Z to P$ such that $z_1 = p_1 u$ and $z_2 = p_2 u$.

#align(center)[#commutative-diagram(
    node((-1, -1), $Z$, "Z"),
    node((0, 0), $P$, "P"),
    node((0, 1), $B$, "B"),
    node((1, 0), $A$, "A"),
    node((1, 1), $C$, "C"),
    arr("Z", "A", $z_1$, label-pos: right),
    arr("Z", "B", $z_2$, label-pos: left),
    arr("P", "A", $p_1$, label-pos: left),
    arr("P", "B", $p_2$, label-pos: right),
    arr("A", "C", $f$, label-pos: right),
    arr("B", "C", $g$, label-pos: left),
    arr("Z", "P", $u$, label-pos: left, "dashed"),
  )]