# ALGORITHM A1.5 with Bezier

proc deCasteljau2D(P: seq[tuple[x, y: float]], n: int, u, v: float): tuple[x, y: float] =
    var Q: seq[tuple[x, y: float]] = newSeq[tuple[x, y: float]](n + 1)
    for i in 0..n:
        Q[i] = P[i]

    for k in 1..n:
        for i in 0..n-k:
            let x = (1.0 - u) * Q[i].x + u * Q[i + 1].x
            let y = (1.0 - u) * Q[i].y + u * Q[i + 1].y
            Q[i] = (x, y)

    var R: seq[tuple[x, y: float]] = newSeq[tuple[x, y: float]](n + 1)
    for j in 0..n:
        R[j] = Q[j]

    for k in 1..n:
        for i in 0..n-k:
            let x = (1.0 - v) * R[i].x + v * R[i + 1].x
            R[i] = (x, R[i].y)

    return (R[0].x, Q[0].y)

# Ejemplo de uso
let P: seq[tuple[x, y: float]] = @[(1.0, 2.0), (2.0, 3.0), (3.0, 4.0)]  # Puntos de control
let n = P.len - 1  # Grado del polinomio (número de puntos de control - 1)
let u = 0.5  # Parámetro u
let v = 0.5  # Parámetro v
let C = deCasteljau2D(P, n, u, v)
echo "Punto en la curva de Bézier en u=", u, ", v=", v, ": (", C.x, ", ", C.y, ")"
