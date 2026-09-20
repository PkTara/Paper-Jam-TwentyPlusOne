#let olympus-background() = {
  place(top + left, dx: -50pt, dy: -50pt)[
    #circle(
      radius: 120pt,
      fill: rgb("#e8c547"),
    )
  ]

  place(bottom + right, dx: 50pt, dy: 50pt)[
    #circle(
      radius: 150pt,
      fill: rgb("#d95d39"),
    )
  ]

  place(center)[
    #text(
      size: 180pt,
      fill: rgb(20, 20, 20, 20),
    )[⚡]
  ]
}