# graficacion
programs from the book "The nurbs"

-----PROGRAMA horner.nim-----

Este código implementa el algoritmo de Horner para evaluar un polinomio en un punto dado.

Definición del procedimiento horner:
El procedimiento horner toma dos argumentos: u, que es el punto en el que se evaluará el polinomio, y a, que es la secuencia que contiene los coeficientes del polinomio en orden descendente de grado.
La variable c se inicializa con el coeficiente de mayor grado del polinomio, que es a[a.len()-1].
Luego, se realiza un bucle for desde 1 hasta a.len()-1. En cada iteración del bucle, se calcula c utilizando el algoritmo de Horner, que es c = a[a.len-1-i] + c * u.
El resultado final es el valor de c, que es el valor del polinomio evaluado en u.

Inicialización de datos:
Se define una secuencia a que contiene los coeficientes del polinomio. En este caso, los coeficientes son @[1.0, 2.0, 2.0, -3.0, -3.0, 4.0, -10.0, 4.1, -10.0].
Se define el valor de u, que es el punto en el que se evaluará el polinomio. En este caso, u es 0.5.

Llamada al procedimiento horner:
Se llama al procedimiento horner con los argumentos u y a.
La salida de horner(u, a) se imprime junto con el tamaño de la secuencia a.

Impresión de resultados:
El resultado de horner(u, a) se imprime, seguido del tamaño de la secuencia a.

-----PROGRAMA bernstein.nim-----

Este código implementa el algoritmo para calcular el polinomio de Bernstein de grado n evaluado en un punto u dado, utilizando el método iterativo de construcción de los coeficientes de Bernstein.

Definición del procedimiento Bernstein:
El procedimiento Bernstein toma tres argumentos: i, que indica el índice del polinomio de Bernstein que se está calculando, n, que es el grado del polinomio, y u, que es el punto en el que se evaluará el polinomio.
Se inicializa una matriz temporal temp de tamaño n+1 para almacenar los valores temporales.
Se calculan los coeficientes de Bernstein para el polinomio actual utilizando el método iterativo. Se actualiza la matriz temp en cada iteración.
Luego, se calculan todos los polinomios de Bernstein de grado n y se almacenan en la matriz B.

Inicialización de datos:
Se define un ejemplo de uso donde se llama a Bernstein con i=1, n=5, y u=0.5.

Llamada al procedimiento Bernstein:
Se llama al procedimiento Bernstein con los argumentos especificados en el ejemplo de uso.

Impresión de resultados:
El resultado devuelto por Bernstein se imprime.

-----PROGRAMA bernsteinV2.nim-----

Este código implementa el algoritmo para calcular los coeficientes de Bernstein de grado n para un parámetro u dado.

Definición del procedimiento Bernstein:
El procedimiento Bernstein toma dos argumentos: n, que es el grado del polinomio de Bernstein, y u, que es el punto en el que se evaluará el polinomio.
Se inicializa una secuencia B para almacenar los coeficientes de Bernstein, donde B[i] será el coeficiente correspondiente al término de grado i.
Se inicializan todos los coeficientes de B a 0, excepto el primero, que se establece en 1, ya que el primer coeficiente siempre es 1.
Se calculan los coeficientes de Bernstein restantes utilizando el método iterativo.

Llamada al procedimiento Bernstein:
Se llama al procedimiento Bernstein con n=5 y u=0.5.

Impresión de resultados:
El resultado devuelto por Bernstein se imprime.

-----PROGRAMA deCasteljaul.nim-----

Este código implementa el algoritmo de De Casteljau para calcular un punto en una curva de Bézier dado un parámetro u.

Definición del procedimiento deCasteljau:
El procedimiento deCasteljau toma tres argumentos: P, que es una secuencia de puntos de control de la curva de Bézier, n, que es el grado del polinomio (número de puntos de control menos uno), y u, que es el parámetro que define el punto a calcular en la curva de Bézier.
Se inicializa una secuencia Q para almacenar los puntos intermedios calculados durante el algoritmo de De Casteljau.
Se realiza el algoritmo de De Casteljau para calcular el punto en la curva de Bézier correspondiente al parámetro u.

Inicialización de datos:
Se define un ejemplo de uso donde se crea una secuencia P que contiene los puntos de control (1.0, 2.0), (2.0, 3.0), y (3.0, 4.0).
Se calcula el grado del polinomio n restando 1 al número de puntos de control.

Llamada al procedimiento deCasteljau:
Se llama al procedimiento deCasteljau con los argumentos P, n, y u.

Impresión de resultados:
El punto calculado en la curva de Bézier se imprime como salida.

-----PROGRAMA findSpan.nim-----

Este código implementa un algoritmo para encontrar el índice del intervalo de nodos donde se encuentra un parámetro u dado dentro de un vector de nodos U dado.

Importación de bibliotecas y definición de datos:
Se importa la biblioteca math.
Se define un vector de nodos U que contiene los valores de los nodos.

Definición del procedimiento findSpan:
El procedimiento findSpan toma cuatro argumentos: n, que es el grado más alto de la curva de Bézier menos uno, p, que es el grado del polinomio, u, que es el parámetro para encontrar el intervalo de nodos, y U, que es el vector de nodos.
Se inicializan las variables lw y hh para realizar la búsqueda binaria.
Se calcula el índice medio inicial.
Se realiza la búsqueda binaria ajustando los valores de lw y hh según el valor de u hasta que se encuentre el intervalo de nodos correcto.

Llamada al procedimiento findSpan:
Se llama al procedimiento findSpan con los argumentos 8, 2, 2 y U.

Impresión de resultados:
Se imprime el resultado devuelto por findSpan.

-----PROGRAMA basisFuns.nim-----

Este código implementa un algoritmo para calcular las funciones de base no nulas de una curva de Bézier dado un parámetro u y el vector de nodos U.

Definición del procedimiento basisFuns:
El procedimiento basisFuns toma cuatro argumentos: i, que es el índice del nodo de inicio del intervalo de nodos donde se encuentra u, u, que es el parámetro, p, que es el grado del polinomio, y U, que es el vector de nodos.
Se inicializan las secuencias N, left y right para almacenar las funciones de base no nulas y los términos de la parte izquierda y derecha de la ecuación recursiva, respectivamente.
Se calculan las funciones de base no nulas utilizando el algoritmo recursivo de De Boor, y se almacenan en la secuencia N.

Inicialización de datos:
Se define el vector de nodos U y se establecen los valores de otros datos como i, u y p.

Llamada al procedimiento basisFuns:
Se llama al procedimiento basisFuns con los argumentos i, u, 2 y U.

Impresión de resultados:
Se imprime el resultado devuelto por basisFuns.
