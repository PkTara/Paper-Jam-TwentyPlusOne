#import "../components/components-lib.typ" : *
#import "../components/theme.typ" : *

// Two players stacked on one side of the table
#let god-column(gods, number, current_player) = {
  stack(
    spacing: 10pt,
    ..gods.map(god => god-square(
      god,
      number: if god == current_player { number },
      active: god == current_player
    ))
  )
}


#let number-count-page(god, number, direction, current_player) = {
  pagebreak()

  grid(
    columns: (1fr, auto, 1fr),
    align: center + top,

    god-column(("Athena", "Artemis"), number, current_player),

    [
      #align(center)[=  #god #label(url-generator(
        players_character: god,
        current_player: current_player,
        direction: direction,
        number: number
      )
      )
      ]

      #image(
      "../components/img/Dionysus.png",
      height: if number == 21 { 90pt } else { 118pt }
      )
    ],

    god-column(("Ares", "Zeus"), number, current_player),
  )

  if number == 21 {
    align(center)[
      Uh oh, you reached 21

      #text(font: display-font, fill: ember, size: 22pt)[DRINK!]
    ]
  } else {
    place(bottom,
      player-card(god, number: number, direction: direction, current_player: current_player)
    )
  }

}
