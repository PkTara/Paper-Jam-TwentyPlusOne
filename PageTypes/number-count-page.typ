#import "../components/components-lib.typ" : *

#let number-count-page(god, number) = {
  pagebreak()
  align(center)[=  #god #label(god + "number" + str(number))] 

  place(bottom,
    
    player-card(god)
    
    )


  if number < 21 {
 
  for i in range(1, 3, inclusive: true) {
    let no = number + i
    if no <= 21 {
      button(
        label(god + "number" + str(no)),
        [#no],
        fillColor:blue
      )

    }
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