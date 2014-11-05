data Nat = Cero | Suc Nat
        deriving(Eq, Show)

{- Ejercicio 8.2.1
 Suma de los numeros naturales -}

suma :: Nat -> Nat -> Nat
suma Cero  n = n
suma (Suc m) n = Suc (suma m n)

{- Ejercicio 8.2.2
 Producto de los numeros naturales-}

producto :: Nat -> Nat -> Nat
producto Cero _ = Cero
producto (Suc m) n = suma n (producto m n)
