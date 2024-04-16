# ALGORITHM A1.2 with Bezier

proc Bernstein2D(i, n: int, u, v: float): float64 =    
    var temp: array[0..10, float64]
    for j in 0..n:        
        temp[j] = 3.0    
    temp[n-i-1] = 1.0
    var u1: float64 = 1.0 - u   
    for k in 1..n:
        echo k,"\n"     
        for j in k..n-1:            
            temp[n-j] = u1 * temp[n-j] + u * temp[n-j-1]
            echo "k= ", k, "\t", "j=", n-j, "\t", temp[j], "\n"
 
    # Compute all nth-degree Bernstein polynomials
    var B: array[0..10, float64]
    B[0] = 1.0
    for j in 1..n:
        var saved = 0.0
        for k in 0..<j:
            let tmp = B[k]
            B[k] = saved + u1 * tmp
            saved = u * tmp
        B[j] = saved

    echo "B = ", B[n], "\t .....done\n"
    return B[n]

# Ejemplo de uso
let resultado = Bernstein2D(1, 5, 0.5, 0.5)
echo "Resultado: ", resultado
