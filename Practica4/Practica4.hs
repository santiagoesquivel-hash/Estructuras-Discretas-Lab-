import Auxiliar (sumaEnt, multNat, Nat (Cero,Suc), Ent (Zero, Succ, Neg))

a_natural :: Int -> Nat 
a_natural 0 = Cero 
a_natural x = Suc (a_natural (x-1))

a_entero :: Nat -> Int 
a_entero Cero = 0
a_entero (Suc x) = 1 + a_entero (x) 

potenciaNat :: Nat -> Nat -> Nat 
potenciaNat (Suc x) Cero = (Suc Cero)
potenciaNat (Suc x) (Suc m) = multNat (Suc x) (potenciaNat (Suc x) (m))

facNat :: Nat -> Nat 
facNat Cero = (Suc Cero)
facNat (Suc x) = multNat (Suc x) (facNat (x))

multiEnt :: Ent -> Ent -> Ent 
multiEnt x Zero = Zero
multiEnt Zero x = Zero
multiEnt (Succ x) (Succ m) = sumaEnt (Succ x) (multiEnt (Succ x) (m)) 
multiEnt (Neg(Succ(x))) (Neg(Succ(m))) = multiEnt (Succ x) (Succ m)
multiEnt (Neg (Succ x)) (Succ m) = Neg (multiEnt (Succ x) (Succ m))
multiEnt (Succ x) (Neg (Succ m)) = Neg (multiEnt (Succ x) (Succ m))

