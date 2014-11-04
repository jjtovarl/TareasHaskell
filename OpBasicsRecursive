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
