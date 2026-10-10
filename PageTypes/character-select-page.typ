#import "../components/gods-select.typ" : *

#let character-select-page(greek_gods) = {
  pagebreak()
  align(center)[= CHARACTER SELECT #label("character-select")]

  v(6pt)

  god-table(greek_gods)

}
