#import "../components/components-lib.typ": *

#let character-confirmed-page(god) = {
    pagebreak()

    align(center)[=  #god #label("character=" + god)] 


 [ 
    I PROPOSE A GAME

    OF 20 + 1!

    TO MY...
 ]

  button(
    label(god + "number" + str(0)),
    [LEFT],
    fillColor: blue
    )

    button(
    label(god + "number" + str(0)),
    [RIGHT],
    fillColor: purple
    )
  

  button(<character-select>, [Go Back], fillColor:red)

}