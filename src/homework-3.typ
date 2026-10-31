#import "@preview/cetz:0.5.2"

#import "/libs/simple-mathplot.typ": number-line, number-line-point
#import "/libs/math.typ": tripow, trilog, trirad
#import "/libs/question-box.typ": qa, set-show-answers

// style

#import "/styles/style.typ": homework-style, tc
#show: homework-style


// #set-show-answers(false)
= Homework 3
== 多項式的運算與應用

#qa[是非題][
  1. $x^2 - x + sqrt(2)$ 是多項式。
  2. 設 $f(x)$ 與 $g(x)$ 皆為 $x$ 的非零多項式，則 $deg(f(x) dot g(x)) = deg(f(x)) dot deg(g(x))$。
  3. 設 $f(x)$ 與 $g(x)$ 皆為 $n$ 次多項式，且 $h(x) = g(x) - f(x)$，則 $h(x)$ 必為零次多項式。
  4. 若三次多項式 $f(x) = (x-1)(x^2+x) + (x+1)$，則 $f(x)$ 除以 $x-1$ 的餘式為 $x+1$。
  5. 設多項式 $f(x)$ 滿足 $f(-1) = 2$，則 $f(x)$ 除以 $2x+2$ 的餘式為 $2$。 
][
  1. O
  2. O
  3. X
  4. X
  5. O
]

#qa[][
  若 $x^4 + 4x^2 + a x + b$ 可被 $x^2 + 2x + 3$ 整除，試求 $a$、$b$ 的值與商式。
][
  $
    a = 7, b = 6
  $
  \
  \
  \
  \
  
]

#pagebreak()

#qa[
  設 $f(x)=(x^3-2x^2+3)(x^2-2x-1)+2x^2+6$，試選出正確的選項。\
  (多選)
][
    1. $f(x)$ 除以 $x-1$ 的餘式為4 
  2. $f(x)$ 除以 $x^2-2x-1$ 的餘式為 $3x^2+5$ 
  3. $f(x)$ 除以 $x^3-2x^2+3$ 的商式為 $x^2-2x-1$ 
  4. $f(x)$ 除以 $2x^3-4x^2+6$ 的餘式為 $x^2+3$ 
  5. $f(x)$ 除以 $2x^3-4x^2+6$ 的商式為 $1/2(x^2-2x+1)$
][
  \
  \
  \
  \
  \
  \
  \  \
]
 
#qa[
  設$f_1(x), f_2(x)$ 為實係數三次多項式，$g(x)$ 為實係數二次多項式。已知$f_1(x) ,f_2(x)$ 除以 $g(x)$ 的餘式分別為 $r_1(x), r_2(x)$。試選出正確的選項。\
  (多選) 
][
  1. $-f_1(x)$ 除以 $g(x)$ 的餘式為 $-r_1(x)$ 
  2. $f_1(x)+f_2(x)$ 除以 $g(x)$ 的餘式為 $r_1(x)+r_2(x)$ 
  3. $f_1(x) dot f_2(x)$ 除以 $g(x)$ 的餘式為 $r_1(x) dot r_2(x)$  
  4. $f_1(x)$ 除以 $-3g(x)$ 的餘式為 $-1/3 r_1(x)$
  5. $f_1(x) dot r_2(x) - f_2(x) dot r_1(x)$ 可被 $g(x)$ 整除。
][

]

#pagebreak()

#qa[設 $f(x)$ 為一多項式，$a, b in RR, a != 0$，若以 $x-b/a$ 除 $f(x)$，所得商式為 $q(x)$，餘式為 $r$。則：][
  1. 以 $a x - b$ 除 $f(x)$ 的商式與餘式為？
  2. 以 $x - b$ 除 $f(x/a)$ 的商式與餘式為？
][
  1. $1/a q(x), r$
  2. $1/a q(x/a), r$
  \
  \
]

=== 除法原理的應用：

若多項式 $f(x)$ 可以化成 $x-a$ 的多項式，可以方便求 $x=a$ 附近的值。\
比方說：\
設 $f(x) = 2x^3-7x^2+6x$，想求 $f(0.998)$ 的近似值到小數點後三位，若可以將 $f(x)$ 表示為：
$ f(x) = a(x-1)^3 + b(x-1)^2 + c(x-1) + d $
如此 $ f(0.998) = a(-0.002)^3 + b(-0.002)^2 + c(-0.002) + d $，若只要估計到小數點後三位，就不必每一項的值都要計算，即 $ f(0.998) tilde.equiv c(-0.002) + d $ ps: 若 $b$ 很大也可考慮 $b(-0.002)^2 + c(-0.002) + d$。

#qa[
  設 $f(x) = 2x^3-7x^2+6x$。
][
  1. 將 $f(x)$ 表達成 $x-1$ 的形式的多項式 $a(x-1)^3 + b(x-1)^2 + c(x-1) + d$。$a, b, c, d$ 是多少？
  2. 利用上式求 $f(0.998)$ 的近似值到小數點後三位(四捨五入)。
][
  1. $2(x-1)^3-(x-1)^2-2(x-1)+1$
  2. $1.004$
]

#pagebreak()

#qa[設$f(x)=(x-2)^8, g(x)=(x^2-x+1)^10$，試求][
  1. $f(x) dot g(x)$ 中各項係數和。 
  2. $f(x) dot g(x)$ 中偶次項係數和。  
][
  \
  \
  \
  \
  \
  \
  \
  \
]


#qa[設$f(x)＝2x^4＋3x^2－4x＋2, g(x)＝x^2＋x－2$，試求：][
  1. $f(x)＋4g(x)$。
  2. $f(x) dot g(x)$。
  3. $f(x) div g(x)$ 的商及餘式。 
][
  1. $f(x) + 4g(x) = 2x^4+7x^2-6$  
    $
      
    $
]


#pagebreak()

== 複習

#qa[][
  我們知道：$(5+7)/2 = 6$，並且 $trirad(2,5) < trirad(2,6) < trirad(2,7)$，請問 $trirad(2, 6)$ 比較接近 $trirad(2,5)$ 還是 $trirad(2,7)$?
][
$
  &trirad(2,6) - trirad(2,5) = 1/(trirad(2,6) + trirad(2,5)) \
  &trirad(2,7) - trirad(2,6) = 1/(trirad(2,7) + trirad(2,6)) \
  &trirad(2,7) + trirad(2,6) > trirad(2,6) + trirad(2,5) \
  &therefore \
  &trirad(2,7) - trirad(2,6) < trirad(2,6) - trirad(2,5) \
  &=> trirad(2,6) text("is closer to") trirad(2,7).
$
]

#qa[三個相異實數 $a$, $b$, $c$ 滿足 $b = 4/5a + 1/5c$ ，如果將 $a$, $b$, $c$ 標注在數線上，請問下列哪些是正確的：][
  // #set enum(numbering: "(A)")
  1. $b$ 在 $a$ 與 $c$ 之間。
  2. $c > b$
  3. 若 $d = 4/3a - 1/3c$ ，則 $d$ 在 $a$ 與 $c$ 之間。
  4. $a$ 到 $c$ 的距離是 $b$ 到 $c$ 距離的 $5$ 倍。
  5. 如果 $|b| = 4/5|a| + 1/5|c|$，則 $a times b times c > 0$。
][
  1. O
  2. X, 不一定
  3. X, $d$ 在 $overline(a c)$ 外
  4. X, $5/4$ 倍
  5. X, 不一定，可能均為負，$a times b times c < 0$
]

#pagebreak()

#qa[用指數律簡化下列各式][
  // #set enum(numbering: "(1)")
  1. $trirad(3,2) dot trirad(3,4)$
  2. $trirad(5,trirad(3,6))$
  3. $trirad(3,2) dot trirad(4,3)$
][
  // #set enum(numbering: "(1)")
  1. $trirad(3,2) dot trirad(3,4) = trirad(3,2 times 4) = 2$
  2. $trirad(5, trirad(3,6)) =  trirad(5 times 3, 6) = trirad(15,6)$
  3. $trirad(3,2) dot trirad(4,3) = trirad(3 times 4, tripow(2,4)) dot trirad(4 times 3, tripow(3,3)) = trirad(12, 16) dot trirad(12, 27) = trirad(12, 16 times 27) = trirad(12,432)$
]

#qa[用計算機計算下列各數的近似值(四捨五入至小數點後第四位)][
  1. $trilog(10, 3)$
  2. $trilog(10, 300)$
  3. $trilog(10, 0.3)$
  4. $trilog(10, 7)$
  5. $trilog(10, 2)$
  6. $trilog(10, 5)$
][
  1. $0.4771$
  2. $2.4771$
  3. $-0.5229$
  4. $0.8451$
  5. $0.3010$
  6. $0.6990$
]

#pagebreak()

#qa[][
  1. 過點 $A(3,4)$, $B(-4,7)$ 的直線方程式？
  2. 過點 $A(3,4)$, $B(3,7)$ 的直線方程式？
  3. 設直線 $L$ 的斜率為 $m$，$y$ 截距為 $b$，則 $L$ 的方程式為？
][
  1. $y = -3/7 + 37/7$
  2. $x = 3$
  3. $y = m dot x+b$
]
