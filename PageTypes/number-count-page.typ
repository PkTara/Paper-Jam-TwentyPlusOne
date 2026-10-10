#import "../components/components-lib.typ" : *

#let four-squares(number, current_player, direction) = {
  let places = (
    ("Athena", top + left, 0%),
    ("Ares", top + right, 0%),
    ("Artemis", top + left, 30%),
    ("Poseidon", top + right, 30%)
  )

  for (god, quadrant, percent) in places {
    place(
      quadrant,
      dy: percent
    )[
      #god-square(god)
      #if god == current_player [#number]
    ]
  }
}


#let number-count-page(god, number, direction, current_player) = {
  pagebreak()
  align(center)[=  #god #label(url-generator(
    players_character: god,
    current_player: current_player,
    direction: direction,
    number: number
  )
  ) 
  ]

  align(center)[
    #image(
    "../components/img/Dionysus.png",
    height: 50%
    )
  ]

  if number == 21 {
    align(center)[= DRINK!]
  } else {
    four-squares(number, current_player, direction)
  }


  if number != 21 {
  place(bottom,
    
    player-card(god, number: number, direction: direction, current_player: current_player)
    
    )
 
  } 

}
