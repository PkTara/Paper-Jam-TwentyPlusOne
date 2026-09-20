#import "../components/components-lib.typ" : *

#let four-squares() = {
place(
    top + left,
  )[
    #god-square("Athena")
  ]

  place(
    top + right,
  )[
    #god-square("Ares")
  ]

  place(
    top + right,
    dy: 30%
  )[
    #god-square("Artemis")
  ]

  place(
    top + left,
    dy: 30%
  )[
    #god-square("Zeus")
  ]
}

#let number-count-page(god, number) = {
  pagebreak()
  align(center)[=  #god #label(god + "number" + str(number))] 

  align(center)[
    #image(
    "../components/img/Dionysus.png",
    height: 50%
    )
  ]

  if number == 21 {
    align(center)[= DRINK!]
  } else {
    four-squares()
  }


  if number != 21 {
  place(bottom,
    
    player-card(god, number: number)
    
    )
 
  } 

}

  if number == 21 {
    align(
      center,
    )[
      Uh oh, you reached 21
      
      = DRINK!
      
      ]
  }
  }

}