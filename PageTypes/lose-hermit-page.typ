
#import "../components/button.typ" : *
#import "../components/page-label.typ" :*

#let lose-hermit-page() = {
  pagebreak()
  page-label("lose-hermit")

  [Waaaaa, you're too boring! ]

  button(
    <buy-a-ticket>,
    [Go Back],
    fillColor: blue
  )
}