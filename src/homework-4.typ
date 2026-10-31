#import "@preview/cetz:0.5.3":canvas, draw

#import "/libs/simple-mathplot.typ": number-line, number-line-point
#import "/libs/math.typ": tripow, trilog, trirad
#import "/libs/question-box.typ": qa, set-show-answers

// style

#import "/styles/style.typ": homework-style, tc
#show: homework-style


#set-show-answers(false)
= Homework 4
== 10-1.4-1 直線方程式及其圖形

#qa[][
  設$A(2, 5)$, $B(6, 3)$, $C(-a, 2)$, $D(10, a)$, $E(11, a+1)$，則：
  1. 若 $overline(A B) parallel overline(C D)$，求 $a$ 的值。
  2. 若 $overline(A B) perp     overline(C D)$，求 $a$ 的值。
  3. 若 $A$, $C$, $E$ 三點共線，求 $a$ 的值。
][
  1. $a = -2$
  2. $a = -22$
  3. $a = -5 or 7$
]

#v(1fr)

#qa[][
  設$A(2,1)$, $B(3,5)$, $C(0,-1)$, $D(2,a)$ 則：
  1. 若 $overline(A B) parallel overline(C D)$，求 $a$ 的值。
  2. 若 $overline(A B) perp     overline(C D)$，求 $a$ 的值。
][
  1. $7$
  2. $-3/2$
]

#v(1fr)

#pagebreak()

#qa[][
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
][
]

#v(1fr)
 
#qa[][
  1. 求過 $(3,4), (-4,7)$ 的直線方程式。
  2. 求過 $(3,4), (3,7)$ 的直線方程式。
  3. 求過 $(3,0), (-4,0)$ 的直線方程式。
  4. 求斜率 $3$, $y$ 截距 $7$ 的直線方程式。
  5. 求 $3x-2y+6=0$ 的斜率。
][

]

#v(1fr)

#pagebreak()

#qa[][
  1. 過點 $(3,-2)$ 並與直線 $5x-4y+1=0$ 垂直的直線方程式。
  2. $x$ 截距 $1$，且與過點 $(3,2), (-5, 7)$ 之直線平行的直線方程式。
  3. 已知三角形之頂點為 $A(-1,-10), B(2, -1), C(6, -3)$，試求 $triangle A B C$ 的垂心 $H$。
][
  1. $4x+5y=2$
  2. $5x+8y=5$
  3. $H(3, -2)$
]

#v(1fr)

#qa[][
  1. 直線 $L$ 過點 $(2,6)$ 且與 $x$ 軸及 $y$ 軸之截距和為 $1$，試求 $L$ 的方程式。
  2. 直線 $L$ 在兩軸的截距絕對值相等，並經過 $(-3,1)$，試求 $L$ 的方程式。
][
  1. $y-6 = 2(x-2) or y-6 = 3/2(x-2)$
  2. $x+y+2=0 or x-y+4=0 or x+3y=0$
]

#v(1fr)

#pagebreak()

#qa[多選][
  #grid(
    columns: (1fr, auto),
    gutter: 0.5cm,
    align: horizon,
    [
      如右圖，坐標平面上鳶形 $A B C D$，其中 $A, C$ 在 $y$ 軸上，$B,D$ 在 $x$ 軸上，且 $overline(A B) = overline(A D) = 2$，  $overline(B C) =  overline(C D) = 4$，$overline(A C) = 5$。令 $m_(A B), m_(B C), m_(C D), m_(D A)$ 分別表示直線 $A B, B C, C D, D A$ 之斜率。 
      試問以下那些敘述成立？ 
      1. 此四數值中以 $m_(A B)$ 為最大。 
      2. 此四數值中以 $m_(B C)$ 為最小。 
      3. $m_(B C) = -m_(C D)$ 
      4. $m_(A B) times m_(B C) = -1$
      5. $m_(C D)+m_(D A) > 0$
    ],
    canvas(length: 1cm, {
      import draw: *
      scale(0.7)
      let a = (0, 2)
      let d = (1.5, 0)
      let c = (0, -4)
      let b = (-1.5, 0)
      line((-3, 0), (3, 0), mark: (end: "stealth"), stroke: 0.8pt)
      content((3.6, 0), $x$, anchor: "west")
      line((0, -5), (0, 3.2), mark: (end: "stealth"), stroke: 0.8pt)
      content((0, 3.7), $y$, anchor: "west")
      line(a,b,c,d, close: true, stroke: 1.0pt + rgb("#00A0DC"))
      content(a, $A$, anchor: "south-east", padding: 0.1)
      content(b, $B$, anchor: "north-east", padding: 0.1)
      content(c, $C$, anchor: "west", padding: 0.1)
      content(d, $D$, anchor: "north-west", padding: 0.1)
    })
  )
][
  2, 3, 5
]

#v(1fr)

#qa[][
  設 $A(1,1),B(3,5),C(5,3),D(0,-7),E(2,-3)$ 及 $F(8,-6)$ 為坐標平面上的六個點。若直線 $L$ 分別與 $triangle A B C$ 及 $triangle D E F$ 個恰有一個交點，則 $L$ 的斜率之最小可能值為？
][
  最小可能斜率為 $-3$。
]

#v(1fr)

#pagebreak(weak: true)

#qa[][
  已知直線 $L$ 過兩直線 $10x+3y-18 = 0$ 與 $11x-12y+18 = 0$ 的交點，則：
  1. 若 $L$ 過原點，求 $L$ 的方程式 
  2. 若 $L$ 之斜率為 $8$，求 $L$ 的方程式。
][
  1. $7x-3y = 0$
  2. $8x-y-6 = 0$
]

#v(1fr)

#qa[][
  坐標平面上，直線 $L$ 通過定點 $(2,3)$ 且在第一象限內與兩坐標軸所圍成的三角形面積為最小，求 $L$ 的方程式與最小面積。\
  #text(size: 0.7em)[
    Hint: 可用算幾。
  ]
][
  $L: 3x+2y=12$, 面積為 $12$。
]

#v(1fr)

#pagebreak(weak: true)

#qa[][
  $triangle A B C$ 中，已知一頂點 $A(1,7)$，過 $B, C$ 兩中線所在的直線方程式為 $x+y-5=0$ 與 $x-2y+7=0$，試求下列問題： 
  1. 過 $A$ 點的中線所在的直線方程式。
  2. 直線 $B C$ 的方程式。 
][

]

#v(1fr)

#qa[Euler 線][
  証明 $triangle A B C$ 的垂心 $H$、重心 $G$、外心 $O$ 三點共線。\
  #text(size: 0.7em)[
    Hint: 可以設 $A(0,0), B(c,0), C(p,q)$，找出垂心 $H$、重心 $G$、外心 $O$ 的坐標，進而證明其共線。
  ]
][

]

#v(1fr)

#pagebreak(weak: true)




