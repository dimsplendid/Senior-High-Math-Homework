// Triangle of Power
//
//     exponent
//         |
//         △
//       /   \
//     base  result
//
// Usage:
//
//   $ #tripow(2, 3, 8) $
//   $ #tripow(2, 3) $
//   $ #tripow(2, none, 8) $
//   $ #tripow(none, 3, 8) $
//
// The three positional arguments are:
//   #1 = base
//   #2 = exponent
//   #3 = result
//
// Missing arguments are represented by `none`.

#let tripow(..args) = {
  let pos = args.pos()
  let base     = if pos.len() > 0 { pos.at(0) } else { " " }
  let exponent = if pos.len() > 1 { pos.at(1) } else { " " }
  let result   = if pos.len() > 2 { pos.at(2) } else { " " }

  // The triangle is a large math operator.
  //
  // `large` makes it behave like sum/product:
  // it participates in math spacing and changes size
  // appropriately in display style.
  math.attach(
    math.limits(
      math.class("large", sym.triangle.stroked.t),
    ),
    // top
    t: exponent,

    // bottom-left
    bl: base,

    // bottom-right
    br: result,
  )
}
// short cut for triangular of power
#let trilog(a,c) = tripow(a, " ", c)
#let trirad(b,c) = tripow(" ", b, c)
