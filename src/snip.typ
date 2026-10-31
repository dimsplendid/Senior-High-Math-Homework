#import "@preview/cetz:0.5.3":canvas, draw

#import "/libs/simple-mathplot.typ": number-line, number-line-point
#import "/libs/math.typ": tripow, trilog, trirad
#import "/libs/question-box.typ": qa, set-show-answers

// style

#import "/styles/style.typ": homework-style, tc
#show: homework-style


// #set-show-answers(false)
= Homework ?
== ?


#qa[][

][

]

#v(1fr)

#qa[][

][

]

#v(1fr)

#pagebreak(weak: true)


// question with diagram
  #grid(
    columns: (1fr, auto),
    gutter: 0.5cm,
    align: horizon,
    [
      如右圖，坐標平面上正方形 $A B C D$，其中 $A$ 為原點 $(0,0)$ 且點 $B$ 的坐標為 $(4,3)$：
      1. 試求直線 $B C$ 的方程式。
      2. 試求直線 $C D$ 的方程式。
    ],
    canvas(length: 1cm, {
      import draw: *
      scale(0.5)
      let a = (0, 0)
      let b = (4, 3)
      let c = (1, 7)
      let d = (-3, 4)
      line((-1.5, 0), (5.5, 0), mark: (end: "stealth"), stroke: 0.8pt)
      content((5.60, 0), $x$, anchor: "west")
      line((0, -1), (0, 7.5), mark: (end: "stealth"), stroke: 0.8pt)
      content((0, 7.7), $y$, anchor: "west")
      line(a,b,c,d, close: true, stroke: 1.0pt + rgb("#00A0DC"))
      circle(b, radius: 0.15, fill: rgb("#E53935"), stroke: none)
      content(a, $A$, anchor: "north-east", padding: 0.1)
      content(b, $B(4,3)$, anchor: "west", padding: 0.1)
      content(c, $C$, anchor: "south", padding: 0.1)
      content(d, $D$, anchor: "east", padding: 0.1)
    })
  )
