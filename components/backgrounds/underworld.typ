#import "../theme.typ": *

// Where boring people end up
#let underworld-background() = {
  place(rect(
    width: 100%,
    height: 100%,
    fill: gradient.linear(rgb("#0c0406"), rgb("#3a0d16"), angle: 90deg),
  ))

  // embers drifting up from below
  stars(50, ember.transparentize(30%), from: 40%, height: 60%, seed: 3)

  border(ember)
}
