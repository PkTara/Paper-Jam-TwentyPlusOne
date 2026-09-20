#import "../components/components-lib.typ": *

#let character-confirmed-page(god) = {
    pagebreak()

    align(center)[=  #god #label("character=" + god)] 


 align(center)[ 
    I PROPOSE A GAME

    OF 20 + 1!

    TO MY...
 ]

  grid(
  columns: 2,

  
  button(
    label(god + "number" + str(0)),
    [LEFT],
    fillColor: blue
    ),

    button(
    label(god + "number" + str(0)),
    [RIGHT],
    fillColor: red
    )

  )
  

  place(bottom)[
  #button(<character-select>, [Go Back], fillColor:gray)
  ]

}