#import "../theme.typ": *

// Night sky over Mount Olympus
#let olympus-background() = {
  place(rect(
    width: 100%,
    height: 100%,
    fill: gradient.linear(dusk, night, angle: 90deg),
  ))

  stars(70, marble.transparentize(35%), height: 75%)

  // moon
  place(top + right, dx: -8pt, dy: 18pt, circle(
    radius: 9pt,
    fill: gradient.radial(marble.transparentize(20%), gold.lighten(40%).transparentize(45%)),
  ))

  // the mountain
  place(polygon(
    fill: night.darken(35%).transparentize(30%),
    (0%, 100%),
    (0%, 78%),
    (18%, 66%),
    (30%, 72%),
    (52%, 52%),
    (66%, 64%),
    (80%, 58%),
    (100%, 74%),
    (100%, 100%),
  ))

  border(gold)
}
