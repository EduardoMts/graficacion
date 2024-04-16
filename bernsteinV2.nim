# ALGORITHM A1.3

proc Bernstein(n: int, u: float): seq[float] =
  var B: seq[float] = newSeq[float](n + 1)
  for i in 0..n:
    B[i] = 0.0
  B[0] = 1.0
  let u1 = 1.0 - u
  for j in 1..n:
    var saved = 0.0
    for k in 0..<j:
      let temp = B[k]
      B[k] = saved + u1 * temp
      saved = u * temp
    B[j] = saved
  return B

# Llamada al procedimiento Bernstein
let resultado = Bernstein(5, 0.5)
echo "Resultado de Bernstein:", resultado
