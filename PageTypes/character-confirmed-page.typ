#import "../components/components-lib.typ": *
#import "../components/theme.typ": *

#let character-confirmed-page(god) = {
    pagebreak()

    align(center)[=  #god #label(
      url-generator(players_character:god)
      )]


  grid(
    columns: (auto, 1fr),
    column-gutter: 12pt,
    align: horizon,

    box(
      width: 90pt,
      height: 100pt,
      radius: 4pt,
      clip: true,
      fill: night.transparentize(30%),
      stroke: 0.8pt + gold,
      align(center + horizon, image(
        "../components/img/" + god + ".png",
        width: 86pt,
        height: 96pt,
        fit: "contain"
      ))
    ),

    stack(
      spacing: 8pt,

      align(center, text(font: display-font, size: 9pt)[
        I PROPOSE A GAME

        OF #text(fill: gold)[20 + 1]!

        TO MY...
      ]),

  grid(
  columns: (1fr, 1fr),
  column-gutter: 6pt,


  button(
    label(url-generator(
      players_character: god,
      current_player: god,
      direction: "left",
      number: 0
    )),
    [#sym.arrow.l LEFT],
    fillColor: aegean
    ),

    button(
      label(url-generator(
      players_character: god,
      current_player: god,
      direction: "right",
      number: 0
    )),
    [RIGHT #sym.arrow.r],
    fillColor: terracotta
    )

  )
    )
  )


  place(bottom)[
  #button(<character-select>, [Go Back], fillColor: stone)
  ]

}
