#import "@preview/commute:0.2.0": node, arr, commutative-diagram

= Universal property of Quotient topology

#align(center)[#commutative-diagram(
    node((0, 0), $X$),
    node((0, 1), $Y$),
    node((1, 0), $X \/ ker(f)$, "quot"),
    arr($X$, $Y$, $f$),
    arr("quot", (0, 1), $tilde(f)$, label-pos: right, "dashed", "inj"),
    arr($X$, "quot", $pi$),
  )]