module Auxiliar where

{-Tipo de dato Nat
    Descripción: Creamos el conjunto de los números naturales con:
    Caso Base : Cero 
    Caso REcursivo: Suc Nat 
    Uso: funcion :: Nat -> (tipo de dato) 
-}

data Nat = Cero | Suc Nat deriving (Eq, Show)

{-Tipo de dato Ent
    Descripción: Creamos el conjunto de los números enteros con:
    Caso Base : Zero
    Caso REcursivo: Succ Ent
                    Neg Ent 
    Uso: funcion :: Ent -> (tipo de dato) 
-}

data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)

{-Tipo de dato Matrioska
    Descripción: Creamos el conjunto de una Matrioska con:
    Caso Base : Mati
    Caso REcursivo: Cont Mati 
    Uso: funcion :: Matrioska -> (tipo de dato) 
-}

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{- Función: sumaEnt
   Descripción: De acuerdo con el tipo de dato creado y definido como Ent, se introducen dos Ent y devuelve su suma tambien como 
   un Ent
   Uso: sumaEnt (Succ(Succ Zero)) (Succ Zero) = (Succ(Succ(Succ Zero)))
-}

sumaEnt :: Ent -> Ent -> Ent 
sumaEnt Zero x = x 
sumaEnt x Zero = x 
sumaEnt (Succ x) (Succ m) = Succ ((sumaEnt x) (Succ(m)))
sumaEnt (Neg m) (Neg x) = Neg (sumaEnt (m) (x) )
sumaEnt (Neg (Succ n)) (Succ x) = sumaEnt (Neg n) x 
sumaEnt (Succ x) (Neg (Succ n)) = sumaEnt x (Neg n)

{- Función: sumaNat
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introducen dos Nat y devuelve su suma tambien como 
   un Nat
   Uso: sumaNat (Suc(Suc Cero)) (Suc Cero) = (Suc(Suc(Suc Cero)))
-}

sumaNat :: Nat -> Nat -> Nat  
sumaNat Cero x = x
sumaNat x Cero = x
sumaNat (Suc x) m = sumaNat x (Suc m)

{- Función: multNat
   Descripción: De acuerdo con el tipo de dato creado y definido como Nat, se introducen dos Nat y devuelve el producto de estos 
   tambien como un Nat
   Uso: multNat (Suc(Suc Cero)) (Suc Cero) = (Suc(Suc Cero))
-}

multNat :: Nat -> Nat -> Nat 
multNat (Suc x) Cero = Cero 
multNat  x (Suc m) = sumaNat x (multNat (x) (m))