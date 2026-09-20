
#set page(
  paper: "iso-b7",
  number-align: center,
)

#import "PageTypes/page-type-lib.typ" : *

#import "components/god-cards.typ": player-card
#import "components/gods-select.typ": god-table

#import "components/backgrounds/olympus.typ": olympus-background

// #set page(
//     background: olympus-background()
// )

#align(center)[= CHARACTER SELECT #label("character-select")]

#let greek_gods = ("Zeus", "Athena", "Artemis", "Ares")

#god-table(greek_gods)



#{
for god in greek_gods {


  character-confirmed-page(god)

  for i in range(21, inclusive: true) {
    number-count-page(god, i)
  }
    
    
}
}




