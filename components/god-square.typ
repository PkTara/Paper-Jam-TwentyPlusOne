#import "theme.typ": *

// Portrait of a player round the table; the one who spoke last is lit up
// and shows the number they said
#let god-square(god, number:none, active: false)  = {
  let frame = box(
    width: 44pt,
    height: 44pt,
    radius: 4pt,
    clip: true,
    fill: if active { gold.transparentize(50%) } else { night.transparentize(40%) },
    stroke: if active { 1.5pt + gold } else { 0.6pt + gold.transparentize(50%) },
  )[
    #align(center + horizon)[
      #image(
        "img/" + god + ".png",
        height: 40pt,
        width: 40pt,
        fit: "contain"
      )
    ]
  ]

  box[
    #stack(
      spacing: 2pt,
      frame,
      align(center, text(font: display-font, size: 6pt, fill: if active { gold } else { marble }, god))
    )

    #if number != none {
      place(top + right, dx: 7pt, dy: -7pt, circle(
        radius: 8pt,
        fill: terracotta,
        stroke: 1pt + gold,
        align(center + horizon, text(weight: "bold", size: 8pt, str(number)))
      ))
    }
  ]
}
