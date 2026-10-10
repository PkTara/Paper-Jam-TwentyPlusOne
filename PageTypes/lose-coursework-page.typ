
#import "../components/button.typ" : *
#import "../components/theme.typ" : *
#import "../components/backgrounds/underworld.typ" : *

#let lose-coursework-page() = page(background: underworld-background())[
  #align(center + horizon)[
    #text(font: display-font, fill: ember, size: 18pt)[Waaaaa, you're too boring! <lose-coursework>]

    #v(8pt)

    #button(
      <buy-a-ticket>,
      [Go Back],
      fillColor: aegean,
      width: 50%
    )
  ]
]
