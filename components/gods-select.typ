#import "url-generator.typ" : *


#let god-table(greek_gods) = {
  table(
    columns: 4,

    ..greek_gods.map(god => 
    link(
      label(url-generator(
        players_character: god
      )),
       box(
      
      [
      #figure( 
        image(
          "img/" + god + ".png",
          height: 50pt,
          )
          )

    #god
      ]

       )
    
    )
)
  )

}