#import "url-generator.typ" : *
#import "theme.typ" : *


#let god-table(greek_gods) = {
  grid(
    columns: 4,
    column-gutter: 6pt,

    ..greek_gods.map(god =>
    link(
      label(url-generator(
        players_character: god
      )),
       block(
      width: 100%,
      inset: 4pt,
      radius: 4pt,
      fill: night.transparentize(30%),
      stroke: 0.8pt + gold,

      stack(
        spacing: 4pt,
        align(center, image(
          "img/" + god + ".png",
          height: 80pt,
          width: 100%,
          fit: "contain"
          )),
        align(center, text(font: display-font, fill: gold, god))
      )

       )

    )
)
  )

}
