import Data.Bits 
import Cuadrado 

data Persona = Persona String Int String deriving (Show) 
data Dia = Lun | Mar | Mie | Jue | Vier | Sab | Dom deriving (Show, Eq, Enum)
{-succ lunes => Mart 
 pred Domingo => sabado 
-} succ lunes => Mart 
 

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0

{-Función: sumCuadrados
    Descripción: toma tres números y regresa la suma de los cuadrados de los dos números más grandes.
    uso: sumCyadrados 4 2 6 = 52
-}

sumCuadrados :: Int -> Int -> Int -> Int
sumCuadrados x y z = 
    if x <= y && x <= z 
    then cuadrado y + cuadrado z
    else cuadrado x 

hombre :: Persona -> String 
hombre (Persona nombre edad residencia) = nombre ++ " tiene " ++ show edad ++ " y reside en " ++ residencia

let list = [x*x | x<- [1..100], even x ]

