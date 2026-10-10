#import "../components/button.typ" : *
#import "../components/theme.typ" : *

#let first-page() = {

  align(
    center + horizon,

  [
    #text(font: display-font, fill: gold, size: 16pt)[I PROPOSE A GAME]

    #text(font: display-font, fill: marble, size: 12pt)[OF]

    #text(font: display-font, fill: gold, size: 34pt)[20 + 1!]

    #v(6pt)

    #button(
      <buy-a-ticket>,
      [START],
      fillColor: terracotta,
      width: 50%
    )
  ]

  )

}
