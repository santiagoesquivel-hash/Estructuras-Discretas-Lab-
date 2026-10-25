module Auxiliar where 
data Nat = Cero | Suc Nat deriving (Eq, Show)
data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)


sumaEnt :: Ent -> Ent -> Ent 
sumaEnt Zero x = x 
sumaEnt x Zero = x 
sumaEnt (Succ x) (Succ m) = Succ ((sumaEnt x) (Succ(m)))
sumaEnt (Neg m) (Neg x) = Neg (sumaEnt (m) (x) )
sumaEnt (Neg (Succ n)) (Succ x) = sumaEnt (Neg n) x 
sumaEnt (Succ x) (Neg (Succ n)) = sumaEnt x (Neg n)


sumaNat :: Nat -> Nat -> Nat  
sumaNat Cero x = x
sumaNat x Cero = x
sumaNat (Suc x) m = sumaNat x (Suc m)

multNat :: Nat -> Nat -> Nat 
multNat (Suc x) Cero = Cero 
multNat  x (Suc m) = sumaNat x (multNat (x) (m))