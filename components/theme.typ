// Palette, fonts and page dressing shared by every page.

#let night = rgb("#151a36")
#let dusk = rgb("#3a2d63")
#let gold = rgb("#e2b74f")
#let marble = rgb("#f4efe4")
#let terracotta = rgb("#c2562c")
#let aegean = rgb("#2f6fa3")
#let stone = rgb("#5d6178")
#let wine = rgb("#8a2140")
#let ember = rgb("#e0583a")

#let display-font = "Greek-Freak"

#let page-margin = (x: 18pt, y: 20pt)

// Greek key (meander) strip, used as the page border
#let meander(color) = {
  let s = (paint: color, thickness: 0.8pt, join: "miter")
  tiling(size: (9pt, 9pt))[
    #place(curve(stroke: s, curve.move((0pt, 0.5pt)), curve.line((9pt, 0.5pt))))
    #place(curve(stroke: s, curve.move((0pt, 8.5pt)), curve.line((9pt, 8.5pt))))
    #place(curve(
      stroke: s,
      curve.move((1.5pt, 8.5pt)),
      curve.line((1.5pt, 2.5pt)),
      curve.line((7pt, 2.5pt)),
      curve.line((7pt, 6.5pt)),
      curve.line((4pt, 6.5pt)),
      curve.line((4pt, 4.5pt)),
    ))
  ]
}

#let border(color) = {
  let band = rect(width: 100%, height: 9pt, fill: meander(color), stroke: none)
  place(top, dy: 5pt, band)
  place(bottom, dy: -5pt, band)
}

// Scatter of small dots; seeded so every page gets the same sky
#let stars(count, color, from: 0%, height: 100%, seed: 7) = {
  let s = seed
  for i in range(count) {
    s = calc.rem(s * 1103515245 + 12345, 2147483648)
    let x = calc.rem(s, 1000) / 1000
    s = calc.rem(s * 1103515245 + 12345, 2147483648)
    let y = calc.rem(s, 1000) / 1000
    let r = 0.3pt + calc.rem(s, 3) * 0.3pt
    place(
      top + left,
      dx: x * 100%,
      dy: from + y * height,
      circle(radius: r, fill: color),
    )
  }
}
