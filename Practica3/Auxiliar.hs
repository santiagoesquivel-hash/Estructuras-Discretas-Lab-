module EsParBin where

{-Comando import Data.Bits
    Descripción: ontiene funciones para realizar operaciones a nivel de bits, como AND (.&.), OR (.|.), XOR (xor) y 
    desplazamientos de bits. Estas operaciones permiten manipular la representación binaria de los números.
    uso: import Data.Bits 
-}

import Data.Bits

{-Función esParBin
    Descripción: Ingresa un número entero y regresa un Bool y busca si es un número par
    Uso: esParBin 5 = False
-}

esParBin :: Int -> Bool
esParBin n = (n .&. 1) == 0

{-Función auxiliar diasMeses  
    Descripción: Ingresa un número Double y regresa un Double de los cuales el primero son x número de días y el segundo es su
    conversion a meses donde este cuenta con 28 días
    Uso: diasMeses 28 = 1
-}

diasMeses :: Double -> Double
diasMeses x = (x / 28)

{-Función auxiliar montoFinal
    Descripción: se ingresan 3 valores que se interpretan como un monto inicial vi, un porcentaje de interes y un lapso de 
    tiempo en días calcula el rendimiento bruto más el monto inicial
    Uso: montoFinal 58 0.0609 3 =  58.274726666666666
-}

montoFinal :: Double -> Double -> Double -> Double
montoFinal vi i t = vi * (1 + i * (t / 360.0))

{-Función auxiliar m 
    Descripción: es una resta donde se espera recibir un monto inicial y un monto final y la diferencia ser el rendimiento 
    bruto de la inversión que se realizo
    Uso: m 50.50 - 50 = 0.50
-}

m :: Double -> Double -> Double 
m x y = x-y 

{-Función auxiliar mCD 
    Descripción: Recibe dos números naturales y devuelve una lista con todos los divisores que comparten los dos números
    Uso: mCD 4 8 = [1,2,4]
-}

mCD :: Int -> Int -> [Int]
mCD n m = [x | x <- [1..n], n `mod` x == 0, m `mod` x == 0] 