#import "../components/button.typ":*

#let buy-a-ticket() = {
  pagebreak()
[= Buy a ticket? <buy-a-ticket> ]

button(
  <character-select>,
  [Yes! Sign me up!],
  fillColor: red
)

button(
  <lose-hermit>,
  [No, stay in like a hermit],
  fillColor: gray
)

button(
  <lose-coursework>,
  [No, pull allnighter for coursework due tomorrow],
  fillColor: gray
)

}

