#import "@preview/commute:0.2.0": *;
// map function
#let Map(X, Y) = {
  `Map` + $(#X, #Y)$
}
// \mapsto
#let mapsto = sym.arrow.r.bar;

// \to
#let to = sym.arrow.r;

// \C
#let cat(C) = $upright(bold(#C))$;
#let Norm = $lt.tri.eq$;

// \mathscr
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)