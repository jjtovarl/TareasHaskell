--suma todos los numeros enteros desde 1 hasta n
{-
Procedimiento:
 - Al número entero ingresado se le llama n
 - El paso base sería que si el número n es 1 entonces la suma de números sería también 1
 - Caso contrario, se suma de forma recursiva el número actual n más {s (n-1)} que es la sumatoria desde 1 hasta el número (n-1), hasta tener 
un valor de tipo Int cuando llega al paso base.-}

sumaHastaN::Int -> Int
sumaHastaN n | n == 1 = 1
    |otherwise =n + sumaHastaN (n-1)

--Función recursiva que devuelve la sumatoria desde un valor entero hasta otro.
sumatoria :: Integer -> Integer -> Integer
sumatoria a b
    |a < b = a + sumatoria (a + 1) b
    |a == b = b
    |otherwise = error "el primer argumento es mayor que el segundo"


--Resta recursiva
restaRecursiva :: Int -> Int -> Int
restaRecursiva x y
     |x < y = x
     |otherwise = restaRecursiva (x - y) y

--Cociente de forma recursiva
cociente :: Int -> Int -> Int
cociente x y
    |x < y = 0
    |otherwise = 1 + cociente (x - y) y

{-
Función recursiva que calcula el producto de los números que hay entre el
primer y segundo argumento, ambos incluidos.
-}

productoIntervalo :: Int -> Int -> Int
productoIntervalo a b
    |a < b = a * productoIntervalo (a + 1) b
    |a == b = b
    |otherwise = error "el primer argumento es mayor que el segundo"


-- x elevado a n usando recursividad
potencia :: Int -> Int -> Int
potencia m 0 = 1
potencia m n = m * (potencia m (n - 1))