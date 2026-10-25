{-Comando import Auxiliar
    Descripción: Se importo un archivo con funciones previamente ya definidas para su uso en este archivo 
    uso: Hasta el inicio del código debe escribirse import NombredelArchivo(Funciones auxiliares que se desean ocupar) y ya se 
    pueden llamar
-}

import Auxiliar (multNat,Nat (Cero,Suc))

{- Función: a_natural
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introduce un entero y devuelve un Nat equivalente
   al entero introducido
   Uso: a_natural 3 = (Suc(Suc(Suc Cero)))
-}

a_natural :: Int -> Nat 
a_natural 0 = Cero 
a_natural x = Suc (a_natural (x-1))

{- Función: a_entero
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introduce un Nat y devuelve un entero equivalente
   al Nat introducido
   Uso: a_entero (Suc(Suc(Suc Cero))) = 3
-}

a_entero :: Nat -> Int 
a_entero Cero = 0
a_entero (Suc x) = 1 + a_entero (x) 

{- Función: potenciaNat
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introducen dos Nat de forma que el primero estará
   elevado a la potencia del segundo Nat
   Uso: potencia (Suc(Suc(Suc Cero))) (Suc(Suc Cero)) = Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero))))))))
-}

potenciaNat :: Nat -> Nat -> Nat 
potenciaNat (Suc x) Cero = (Suc Cero)
potenciaNat (Suc x) (Suc m) = multNat (Suc x) (potenciaNat (Suc x) (m))

{- Función: facNat
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introduce un Nat y se obtendrá el factorial de 
   ese Nat en forma de los Nat
   Uso: facNat (Suc(Suc Cero)) = Suc (Suc Cero)
-}


facNat :: Nat -> Nat 
facNat Cero = (Suc Cero)
facNat (Suc x) = multNat (Suc x) (facNat (x))