
#import "components/theme.typ" : *
#import "components/backgrounds/olympus.typ" : *

#set page(
  paper: "iso-b7",
  flipped: true,
  number-align: center,
  margin: page-margin,
  background: olympus-background(),
)

#set text(size: 10pt, fill: marble)
#show heading: set text(font: display-font, fill: gold, weight: "regular")
#show heading: set align(center)



#import "PageTypes/page-type-lib.typ" : *

#first-page()

#buy-a-ticket()
#lose-hermit-page()
#lose-coursework-page()


#let greek_gods = ("Zeus", "Athena", "Artemis", "Ares")
#character-select-page(greek_gods)

#{
for god in greek_gods {

  character-confirmed-page(god)

  for i in range(21, inclusive: true) {
    for current_player in greek_gods {
      for direction in ("left", "right") {
       number-count-page(god, i, direction, current_player)
      }

    }
  }
    
}
}




