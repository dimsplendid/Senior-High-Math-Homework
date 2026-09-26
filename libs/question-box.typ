#import "@preview/showybox:2.0.2": showybox

#let quetion_counter = counter("quetion")
#let question(title: "", color: blue, ..body) = {
  quetion_counter.step()
  let qi = text(fill:color.darken(40%))[Question #context{quetion_counter.display()}.]
  showybox(
    frame: (
      border-color: color.darken(10%),
      title-color: color.lighten(80%),
      body-color: color.lighten(90%)
    ),
    title-style: (
      color: black,
      weight: "bold",
    ),
    title: [=== #qi #title],
    ..body
  )
}
// #question(title: "", color: blue)[content goes here]
// Default color is blue, can be changed to black if you want to print
// Note that title is optional, it can be removed if you just don't set it to anything (just do #question[content])
// modify from https://github.com/stuxf/adaptable-pset/blob/main/src/lib.typ
