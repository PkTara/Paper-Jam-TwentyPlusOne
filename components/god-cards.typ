
#import "button.typ" :*
#import "url-generator.typ" : *
#import "theme.typ" : *

#let player-card(god, number:none, direction:none, current_player:none) = {
  block(
    width: 100%,
    inset: 4pt,
    radius: 4pt,
    fill: night.transparentize(20%),
    stroke: 0.8pt + gold,

  grid(
  columns: (auto, auto, 1fr),
  column-gutter: 6pt,
  align: horizon,

// Character picture
  stack(
    spacing: 2pt,
    box(
      width: 34pt,
      height: 34pt,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + gold,
      align(center + horizon, image(
        "./img/" + god + ".png",
        height: 32pt,
        width: 32pt,
        fit: "contain"
      ))
    ),
    align(center, text(font: display-font, size: 6pt, fill: gold, god)),
  ),

// Cups
  stack(
    dir: ttb,
    spacing: 3pt,
    ..range(3).map(_ => circle(radius: 3.5pt, stroke: 0.8pt + gold))
  ),

// Player choices
stack(
  dir: ttb,
  spacing: 4pt,

  button(
    <character-select>,
    [Stay Silent],
    fillColor: wine
  )
  ,

if number != none {
  grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  4pt,
  align: center,

  ..range(1, 4).map(i => {
    if number + i <= 21 {
    button(
    label(
      url-generator(
        players_character: god,
        current_player: current_player,
        direction: direction,
        number: number + i
      )
      ),
    [
      #{number + i}
       ],
    fillColor: aegean
  )

    }

  }
)


)

}
)
)
  )
}
