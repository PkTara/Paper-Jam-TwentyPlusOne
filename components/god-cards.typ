


#let player-card(god) = {
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
        image("./img/" + god + ".png", width: 20%)
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

  grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,
  align: center + horizon,
  fill: red,
  

  [Stay Silent],
  [Yap to Neighbour],
  [Admire Surroundings],
),

grid(
  columns: 13,
  gutter:  4pt,
  align: center,

  ..range(1, 22).map(i => [#i])
)


)
)
)

}
