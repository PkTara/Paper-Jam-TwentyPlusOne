#import "../components/button.typ":*
#import "../components/page-label.typ":*
#import "../components/theme.typ":*

#let buy-a-ticket() = {
  pagebreak()

  page-label("buy-a-ticket")

[= Buy a ticket?  ]

v(4pt)

stack(
  spacing: 8pt,

button(
  <character-select>,
  [Yes! Sign me up!],
  fillColor: terracotta
),

button(
  <lose-hermit>,
  [No, stay in like a hermit],
  fillColor: stone
),

button(
  <lose-coursework>,
  [No, pull allnighter for coursework due tomorrow],
  fillColor: stone
)
)

}
