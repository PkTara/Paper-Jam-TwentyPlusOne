
#import "../components/button.typ" : *
#import "../components/page-label.typ" :*
#import "../components/theme.typ" : *
#import "../components/backgrounds/underworld.typ" : *

#let lose-hermit-page() = page(background: underworld-background())[
  #page-label("lose-hermit")

  #align(center + horizon)[
    #text(font: display-font, fill: ember, size: 18pt)[Waaaaa, you're too boring!]

    #v(8pt)

    #button(
      <buy-a-ticket>,
      [Go Back],
      fillColor: aegean,
      width: 50%
    )
  ]
]
