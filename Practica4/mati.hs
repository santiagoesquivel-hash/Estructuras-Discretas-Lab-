{-Comando import Auxiliar
    Descripción: Se importo un archivo con funciones previamente ya definidas para su uso en este archivo 
    uso: Hasta el inicio del código debe escribirse import NombredelArchivo(Funciones auxiliares que se desean ocupar) y ya se 
    pueden llamar
-}

import Auxiliar (Matrioska (Mati , Cont))

{- Función: mayorIgual
   Descripción: De acuerdo con el tipo de dato creado y definido como Matrioska, se introducen dos Matrioskas y devuelve un bool,
   la función compará si la primera Matrioska es igual o mayor a la segunda, si lo es arrojará True y si no False
   Uso: mayorIgual ( Cont ( Cont Mati ) ) ( Cont ( Cont ( Cont Mati ) ) ) = False 
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True 
mayorIgual Mati (Cont m) = False 
mayorIgual (Cont x) (Cont m) = mayorIgual (x) (m)

{- Función: aplana
   Descripción: De acuerdo con el tipo de dato creado y definido como Matrioska, se introduce una Matrioska y devuelve una lista 
   con todos los elementos que contengan a Mati y a Mati
   Uso: aplana ( Cont ( Cont Mati ) ) = [(Cont(Cont Mati)), (Cont Mati), Mati] 
-}

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = (Cont m): (aplana m)