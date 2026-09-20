#import "../components/button.typ" : *

#let first-page() = {

  align(
    center,

  [
    
    = I PROPOSE A GAME

  = OF

  = 20 + 1!

  ]

  )

  button(
    <buy-a-ticket>,
    [START],
    fillColor: red
  )

}