#import "@preview/cetz:0.5.2"

#let number-line-point(x, color: red, label: none) = (
  x: x,
  label: label,
  color: color,
)

#let number-line(begin:-5.5, end:5.5, points:()) = {
  cetz.canvas({
    import cetz.draw: *
    let tick_length = 0.3
    line((begin,0),(end,0), mark: (end: ")>", fill: black))
    for x in range(calc.ceil(begin), calc.ceil(end)) {
      line((x, -tick_length/2),(x, tick_length/2))
      let label = if x < 0 {
        let num = calc.abs(x)
        [#box(width: 0pt)[#align(right)[-]]#num]
      } else if x == 0 [*0*] else [#x]
      content((x, -tick_length*1.3), label)
    }

    for p in points {
      circle((p.x, 0), radius: 0.1, fill: p.color)
      if p.label != none {
        content((p.x, tick_length*1.3), text(fill: p.color, weight: "bold")[#p.label])
      }
    }
  })
}
