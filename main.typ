
#set page(
  paper: "iso-b7",
  flipped: true,
  number-align: center,
)

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
    number-count-page(god, i)
  }
    
}
}




