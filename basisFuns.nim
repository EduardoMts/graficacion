# ALGORITHM A2.2 

var U: seq[float64] = @[0.0, 0.0, 0.0, 1.0, 1.0, 1.0]
# var p : int = 2
var i: int = 2
var u : float64 = 0.1

# {/* Compute the nonvanishing basis functions
# /* Input: i, u, p, U */
# /* Output: N */
# */
# m = n + p + 1, m representa el numero m+1 de nodos, n es entero y
# numero de puntos de control, p es el grado, e i es la variable
# m = 5 , n= 2,

proc basisFuns(i: int, u: float64, p: int, U: seq[float64]): seq[float64]=
    var N: seq[float64] = newSeq[float64]()
    var left: seq[float64] = newSeq[float64](p+1)
    var right: seq[float64] = newSeq[float64](p+1)
    var temp: float64
    var saved: float64
    N.add(1.0)
    for j in 1..p:
        left[j] = u-U[i+1-j]
        right[j] = U[i+j]-u
        saved = 0.0
        for r in 0..<j:
            temp = N[r]/(right[r+1] + left[j-r])
            echo N[r], "\t", right[r+1], "\t", left[j-r],"\n"
            echo temp
            N[r] = saved + right[r+1]*temp
            saved = left[j-r]*temp
        N.add(saved)
    result = N

echo basisFuns(i, u, 2, U)