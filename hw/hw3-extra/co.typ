#import "@preview/commute:0.2.0": *;
#import "@preview/clean-math-paper:0.1.0": *;

// map function
#let Map(X, Y) = {
  `Map` + $(#X, #Y)$
}

#let mapsto = sym.arrow.r.bar;
#let to = sym.arrow.r;
#let cat(C) = $upright(bold(#C))$;