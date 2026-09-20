#import "../components/gods-select.typ" : *

#let character-select-page(greek_gods) = {
  pagebreak()
  align(center)[= CHARACTER SELECT #label("character-select")]

  god-table(greek_gods)

}