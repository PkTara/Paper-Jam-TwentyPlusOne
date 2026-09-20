
#let god-table(greek_gods) = {
  table(
    columns: 4,

    ..greek_gods.map(god => 
    link(
      label("character=" + god),
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