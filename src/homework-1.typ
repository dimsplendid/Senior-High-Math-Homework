#import "@preview/cetz:0.5.2"
#import "/libs/simple-mathplot.typ": number-line, number-line-point

#let show-answers = true
// #let show-answers = false

// style

#import "/styles/style.typ": homework-style, tc
#show: homework-style

#import "/libs/question-box.typ": question

#question(title: [設 a, b, c 都是實數，請問下列哪些是正確的])[
  #set enum(numbering: "(A)")
  1. 若 $a > b$, 則 $a c > b c$ 
  2. $sqrt(a^2) = abs(a)$
  3. $(a+b) / 2 >= sqrt(a b)$
  4. 若 $a$, $b$ 是無理數，則 $a+b$ 也是無理數
  5. 若 $a$ 為有理數，則 $a$ 必然是無窮循環小數
  6. 若 $b$ 為無理數，則 $b$ 必然是無窮不循環小數
]

#let ans = [
  Ans: (B), (F)\
  (A) a, b 為正才成立\
  (C) 同 (A)\
  (D) $(1+sqrt(2)) + (1-sqrt(2)) = 2$\
  (E) $1/4 = 0.25$
]
#if show-answers {ans} else {hide(ans)}

#question(title: [分點公式])[
  1. 設 $A(-3)$，$B(7)$ 為數線上的兩點：
    #set enum(numbering: "(1)")
    1. 若 $P$ 點介於 $A$, $B$ 兩點之間且 $ overline(A P):overline(P B) = 2:3$，求 $P$ 點
    2. 若 $A$ 點介於 $Q$, $B$ 兩點之間且 $ overline(A Q):overline(Q B) = 2:3$，求 $Q$ 點
]
#align(center)[
  #number-line(
    begin: -4.5, end: 9.5,
    points:(
      number-line-point(-3, color: blue, label:"A"),
      number-line-point(7, color: blue, label:"B"),
      number-line-point(1, label:"P"),
      // number-line-point(-23, label:"Q"),
    )
  )
]
#let ans = [
  1. $P = 1$
  $
  (P - A) / (B-P) &= 2/3\
  (P - (-3))/(7-P) &= 2/3\
  3P + 9 &= 14-2P \
  P = 1
  $
  2. $Q=-23$
  $
  (A - Q) / (B - Q) &= 2/3 \
  3A - 3Q &= 2B - 2Q\
  Q = 3A - 2B &= -9 - 14 = -23
  $
]
#if show-answers {ans} else {hide(ans)}
#pagebreak(weak: true)

#question(title: "簡化並展開")[
  1. $(2a - 1)(4a^2 + 2a + 1)$
  2. $(sqrt(2)-2)^3$
  3. 因式分解: $x^6 - 8x^3$
  4. $sqrt(x^2+frac(1,x^2)+2)$
  5. $sqrt(4-sqrt(12)) $
]
#let ans = [
  1. $(2a - 1)(4a^2 + 2a + 1)$
  $ 
  (2a - 1)(4a^2 + 2a + 1) &= 8a^3 + 4a^2 + 2a - 4a^2 - 2a -1 \
                          &= 8a^3 - 1
  $
  2. $(sqrt(2)-2)^3$
  $
  (a+b)^3 &= a^3 + 3a^2 b + 3a b^2 + b^3 \
  (sqrt(2)-2)^3 &=2sqrt(2) - 3 dot 2 dot 2+3 dot sqrt(2) dot 4 - 8 \
                &= 14 sqrt(2) - 20
  $
  3. 因式分解: $x^6 - 8x^3$
  $
  (a^3 - b^3) &= (a-b)(a^2 + a b + b^2)\
  x^6 - 8x^3 &= x^3(x^3 - 8) \
             &= x^3(x-2)(x^2 + 2x + 2)
  $
  4. $sqrt(x^2+frac(1,x^2)+2)$
  $
  sqrt(x^2+frac(1,x^2)+2) &= sqrt((x+1/x)^2) = abs(x+1/x)
  $
  5. $sqrt(4-sqrt(12))$
  $
  sqrt(4-sqrt(12)) &= sqrt(4-2sqrt(3)) = sqrt(3-2sqrt(3)+1) \
                   &= sqrt((sqrt(3)-1)^2) = sqrt(3)-1
  $
]
#if show-answers {ans} else {hide(ans)}
// Generally good to have a pagebreak between new problems
#pagebreak(weak: true)

#question(title: "算幾不等式")[
  1. $x$, $y$ 是正實數且 $x y = 8$，試求 $2x+y$ 的最小值及最小值的 $x$, $y$ 值。
  2. $x$, $y$ 是正實數且 $x + 2y = 4$，試求 $x y$ 的最大值及最大值的 $x$, $y$ 值。
  #grid(
    columns: (1fr, auto),
    gutter: 0.5cm,
    align: horizon,
    [
      3. 如右圖，一動物園欲將園區重新規劃成六個長方形的區域﹐設計師以美化的石牆（紅色實線部分）分隔任意兩相鄰的長方形﹐並以鐵欄杆（虛線部分）隔離遊客。如果石牆的總長度為 1200 公尺（不考慮高度與厚度）﹐而鐵欄杆的數量十分充足﹐試求鐵欄杆圍成的長方形最大面積。
    ],
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      let h = 3.5
      let w = 5.0
      rect(
        (0,0), (w, h),
        stroke: (paint: rgb("181818"), dash: "dashed", thickness:1.5pt),
        fill: green.lighten(80%),
      )
      let red-stroke = (paint: rgb("C62828"))
      line((w/3,0), (w/3, h), stroke: red-stroke)
      line((5/6*w,0), (5/6*w, h), stroke: red-stroke)
      line((0,h/3), (w, h/3), stroke: red-stroke)
     })
  )
  
]

#let ans = [
  1. 最小值為 8，發生在 $(x,y) = (2,4)$
  $
  x > 0, y > 0, x y = 8\
  2x + y >= 2 sqrt(2x dot y) = 8\
  2x = y = 4
  $
  2. 最大值為 2，發生在 $(x,y)=(2,1)$
  $
  x > 0, y > 0, x + 2y = 4 \
  (x + 2y)/2 >= sqrt(x dot 2y) \ 
  2 x y <= 4, x y <= 2
  $
  3. 最大面積為 180000 平方公尺
  假設動物園寬 $w$, 高 $h$:
  $
  tc("面積") &= w h\
  tc("石牆總長") &= w + 2h = 1200
  $
  有上述條件後我們就可以列式：
  $
  sqrt(w dot 2h) &<= (w + 2h)/2 = 600\
  w dot 2h &<= 600^2 = 360000\
  w h &<= 180000
  $
]
#if show-answers {ans} else {hide(ans)}
#pagebreak(weak: true)


