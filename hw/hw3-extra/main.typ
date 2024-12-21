#import "@preview/rubber-article:0.1.0": *
#import "co.typ"
#show: article.with(
  lang: "en",
  eq-numbering: none,
  text-size: 10pt,
  page-numbering: "1",
  page-numbering-align: center,
  heading-numbering: "1.1  ",
)
#set text(font: "DejaVu Sans Mono")
#set raw(tab-size: 4)
#show link: it => {
  set text(fill: rgb(0, 0, 128))
  underline(it)
}
#maketitle(
  title: "Pullback Property: Quotient Topologies to Categories",
  authors: (
    "Chentian Wu",
  ),
  date: "December 6, 2024",
)

#include "sections/0-intro.typ"
#include "sections/1-thm.typ"
#include "sections/2-imp.typ"
#include "sections/3-app.typ"

#bibliography(
  "refs.bib",
  full: true,
  style: "springer-mathphys",
)