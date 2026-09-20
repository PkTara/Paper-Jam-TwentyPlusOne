
#import "button.typ" :*

#let player-card(god, number:none) = {
  stack(
  dir: ltr,

// Character picture + Cups
  align(center,
    box(
      stroke: 1pt,
      inset: 1pt,
      
      stack(
      dir: ttb,
      figure(
        
        image(
          "./img/" + god + ".png",
          height:  30%,
           )
      ),
      [#god],
    )
  )
  ),


  box(
    stroke: 1pt,
    inset: 1pt,
  
  align(horizon + center,
    stack(
      dir: ttb,
      [O],
      [O],
      [O],
    )
  )
  ),

// Player choices

box(
      stroke: 1pt,
      inset: 1pt,
stack(
  dir: ttb,

  button(
    <character-select>,
    [Stay Silent],
    fillColor: red
  )
  ,

if number != none {
  grid(
  columns: 3,
  gutter:  4pt,
  align: center,

  ..range(1, 4).map(i => {
    if number + i <= 21 {
    button(
    label(god + "number" + str(number + i)),
    [
      #{number + i}
       ],
    fillColor: gray
  )
    }

  }
)


)

}
)
)
  )
}
