# ALGORITHM A1.2

proc Bernstein(i, n: int, u: float): float =    
  var temp: array[0..10, float] # Ajusta el tamaño máximo según tus necesidades
  for j in 0..n:        
    temp[j] = 3.0    
  temp[n-i-1] = 1.0
  var u1: float = 1 - u   
  for k in 1..n:
    echo k,"\n"     
    for j in k..n-1:            
      temp[n-j] = u1 * temp[n-j] + u * temp[n-j-1]
      echo "k= ", k, "\t", "j=", n-j, "\t", temp[j], "\n"
 
  # Compute all nth-degree Bernstein polynomials
  var B: array[0..10, float] # Ajusta el tamaño máximo según tus necesidades
  B[0] = 1.0
  for j in 1..n:
    var saved = 0.0
    for k in 0..<j:
      let temp = B[k]
      B[k] = saved + u1 * temp
      saved = u * temp
    B[j] = saved

  echo "B = ", B[n], "\t .....done\n"
  return B[n]

# Ejemplo de uso
let resultado = Bernstein(1, 5, 0.5)
echo "Resultado: ", resultado
