#let button(dest, fillColor:none, content) = {
  link(
    dest,
    
    block(
    width: 100%,
    inset: 0.5em,
    fill: fillColor
  )[
    #align(center)[#content]
  ]
  )
}