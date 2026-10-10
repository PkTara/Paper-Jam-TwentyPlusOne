#import "theme.typ": *

#let button(dest, fillColor: stone, width: 100%, content) = {
  link(
    dest,

    block(
    width: width,
    inset: (x: 6pt, y: 4pt),
    radius: 3pt,
    fill: gradient.linear(fillColor.lighten(15%), fillColor.darken(15%), angle: 90deg),
    stroke: 0.6pt + gold
  )[
    #align(center)[#text(fill: marble, weight: "bold", size: 8pt, content)]
  ]
  )
}
