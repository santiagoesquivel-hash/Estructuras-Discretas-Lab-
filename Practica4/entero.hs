{-Comando import Auxiliar
    Descripción: Se importo un archivo con funciones previamente ya definidas para su uso en este archivo 
    uso: Hasta el inicio del código debe escribirse import NombredelArchivo(Funciones auxiliares que se desean ocupar) y ya se 
    pueden llamar
-}

import Auxiliar (Ent (Zero, Succ, Neg), sumaEnt)

{- Función: multiEnt
   Descripción: De acuerdo con el tipo de dato creado y definido como Ent, se introducen dos Ent y devuelve su producto tambien 
   como un Ent
   Uso: multiEnt (Succ(Succ Zero)) (Succ Zero) = (Succ(Succ Zero))
-}

multiEnt :: Ent -> Ent -> Ent 
multiEnt x Zero = Zero
multiEnt Zero x = Zero
multiEnt (Succ x) (Succ m) = sumaEnt (Succ x) (multiEnt (Succ x) (m)) 
multiEnt (Neg(Succ(x))) (Neg(Succ(m))) = multiEnt (Succ x) (Succ m)
multiEnt (Neg (Succ x)) (Succ m) = Neg (multiEnt (Succ x) (Succ m))
multiEnt (Succ x) (Neg (Succ m)) = Neg (multiEnt (Succ x) (Succ m))

