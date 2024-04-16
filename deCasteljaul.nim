# ALGORITHM A1.5

proc deCasteljaul(P: seq[tuple[x, y: float]], n: int, u: float): tuple[x, y: float] =
    var Q: seq[tuple[x, y: float]] = newSeq[tuple[x, y: float]](n + 1)
    for i in 0..n:
        Q[i] = P[i]

    for k in 1..n:
        for i in 0..n-k:
            let x = (1.0 - u) * Q[i][0] + u * Q[i + 1][0]
            let y = (1.0 - u) * Q[i][1] + u * Q[i + 1][1]
            Q[i] = (x, y)

    return Q[0]

# Ejemplo de uso
let P: seq[tuple[x, y: float]] = @[(1.0, 2.0), (2.0, 3.0), (3.0, 4.0)]  # Puntos de control
let n = P.len - 1  # Grado del polinomio (número de puntos de control - 1)
let u = 0.5  # Parámetro
let C = deCasteljau(P, n, u)
echo "Punto en la curva de Bézier en u=", u, ": ", C
