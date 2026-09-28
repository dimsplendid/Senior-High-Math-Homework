#import "@preview/cetz:0.5.2"

#import "/libs/simple-mathplot.typ": number-line, number-line-point
#import "/libs/math.typ": tripow, trilog, trirad
#import "/libs/question-box.typ": qa, set-show-answers

// style

#import "/styles/style.typ": homework-style, tc
#show: homework-style


// #set-show-answers(false)

== 三角次方

用三角形各個位置代表底數、底數與結果之間的關係：
$
  2^3 = 8 ==> tripow(2,3,8)
$

結合以前學過的根號、指數、對數，這個三角次方可以同時表達這三者，並描繪之間的關係：

$
  2^3       &=> tripow(2,3)  &= 8 \
  root(3,8) &=> trirad(3,8)  &= 2 \
  log_2 8   &=> trilog(2,8)  &= 3
$

注意到三角形所缺的值，就是這個三角次方的值。

$
  tripow(2,3) &=> tc("缺右下的 8") => tripow(2,3) &= 8 \
  trirad(3,8) &=> tc("缺左下的 2") => trirad(3,8) &= 2 \
  trilog(2,8) &=> tc("缺上面的 3") => trilog(2,8) &= 3 \
$

最後要注意的是，此工具僅做為計算補助用，如果是正式考試與作業計算題仍需改用 $root(a,b) , log a , a^b$ 等標準寫法。

#qa[
  請將下式用三角次方表達(不用計算)：
][
  - 提示：根號未寫數字代表開 2 次根號，對數未寫底數則代表以 10 為底數。
  1. $2^3$
  2. $sqrt(8)$
  3. $root(3,9)$
  4. $log 42$
  5. $log_2 8$
][
  1. $tripow(2,3)$.
  2. $trirad(2,8)$.
  3. $trirad(3,9)$.
  4. $trilog(10,42)$.
  5. $trilog(2,8)$.
]

#pagebreak(weak: true)

#qa[
  請將下式用三角次方表達(不用計算)：
][
  1. $root(6, a^5)$
  2. $(root(12, a))^6$
  3. $a^(1/n)$
  4. $a^(m/n)$
  5. $(a^r)^s$
  6. $a^r^s$
  7. $a^(r+s)$
  8. $(a times b)^r$
  9. $log_a r$
  10. $log r$
][
  1. $
    trirad(6, tripow(a,5))
  $
  2. $
    tripow(trirad(12,a), 6)
  $
  3. $
    tripow(a, 1/n)
  $
  4. $
    tripow(a, m/n)
  $
  5. $
    tripow(tripow(a,r),s)
  $
  6. $
    tripow(a,tripow(r,s))
  $
  7. $
    tripow(a, r+s)
  $
  8. $
    tripow(a times b, r)
  $
  9. $
    trilog(a,r)
  $
  10. $
    trilog(10,r)
  $
  
]

#pagebreak(weak: true)

#qa[請試著用三角次方寫下下列關係(不用計算)][
  範例：\
  Q: $ x^(a+b) = x^a times x^b $
  A: $ tripow(x, a+b) = tripow(x,a) times tripow(x,b) $
  1. $x^a times x^b = x^(a+b)$
  2. $x^a div x^b = x^(a-b)$
  3. $log a + log b = log(a b)$
  4. $log a - log b = log(a/b)$
  5. $x^(1/a) = root(a, x)$
  6. $10^(log x) = x$
  7. $log(10^x) = x$
  8. $(root(a,x))^a = x$
  9. $root(a, x^a) = x$
][
  1. $
    tripow(x, a) times tripow(x, b) = tripow(x, a+b).
  $
  2. $
    tripow(x, a) div tripow(x, b) = tripow(x, a-b).
  $
  3. $
    trilog(10, a) + trilog(10, b) = trilog(10, a b).
  $
  4. $
    trilog(10, a) - trilog(10, b) = trilog(10, a/b).
  $
  5. $
    tripow(x, 1/a) = trirad(a, x).
  $
  6. $
    tripow(10, trilog(10,x)) = x.
  $
  7. $
    trilog(10, tripow(10,x)) = x.
  $
  8. $
    tripow(trirad(a,x),a) = x.
  $
  9. $
    trirad(a, tripow(x,a)) = x.
  $
]

#pagebreak(weak: true)

#qa[求 $x$(請使用三角次方計算與表示)][
  1. $(sqrt(2))^3 times (sqrt(2))^5$
  2. $(3^4 times 4^3) / (2^2 times 6^3)$
  3. $10^x = 42$
  4. $17 = 10^(log x)$
  5. $10^(log 345) = x$
][
  1. $
    tripow(trirad(2,2), 3) times tripow(trirad(2,2), 5) = tripow(tripow(2,1/2),3) times tripow(tripow(2,1/2), 5)\
    = tripow(2, 3/2) times tripow(2, 5/2) = tripow(2, 4)
  $
  2. $
    (tripow(3,4) times tripow(4,3)) / (tripow(2,2) times tripow(6 = 2 times 3,3)) =
    (tripow(3,4) times tripow(tripow(2,2),3)) / (tripow(2,2) times tripow(2, 3) times tripow(3,3))\
    = (tripow(3,4-3) times tripow(2, 2 times 3 - (2+3))) = 3 times 2 = 6
  $
  3. $
    tripow(10,x) = 42 => tripow(10,x,42) => x = trilog(10,42)
  $
  4. $
    17 = tripow(10, trilog(10,x)) => tripow(10, trilog(10,x), 17) => trilog(10, x) = trilog(10,17) => x = 17
  $
  5. $
    tripow(10, trilog(10,345)) = x => tripow(10, trilog(10,345), x) => trilog(10,x) = trilog(10,345) => x = 345
  $
]

#pagebreak(weak: true)

