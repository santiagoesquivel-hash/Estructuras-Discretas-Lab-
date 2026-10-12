{-Comando import EsParBin
    Descripción: Se importo una función previamente ya definida en otro archivo para su uso en este archivo 
    uso: Hasta el inicio del código debe escribirse import NombredelArchivo(EsParBin) y ya se puede llamar
-}

import EsParBin (esParBin)

{-Tipo de dato Plazo
    Descripción: Creamos un tipo de dato en el que pueda detectarse el Texto Meses o Dias y un Double junto con ellos 
    Uso: funcion :: Plazo -> (tipode dato) 
-}
data Plazo = Dias Double | Meses Double deriving (Show, Eq) 

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

{-Función cetes 
    Descripción: Dado un monto inicial vi y un lapso de tiempo (Dias x) o (Meses x) calcuará el rendimiento de tu inversión y lo
    sumará a tu monto inicial dandote el total, este depende del tiempo que se especificó 
    Tasas de interés bruto anuales según el plazo:
• 1 mes (28 dias): 6.09 %
• 6 meses (182 dias): 6.91 %
• 12 meses (364 días): 7.44 %
    Uso: cetes 58 (Dias 28) = 58.274726666666666
-}

cetes :: Double -> Plazo -> Double
cetes vi (Dias n) = 
        let tasa = diasMeses n
        in if tasa <= 1
        then montoFinal vi 0.0609 n 
        else if tasa <= 6.5 
            then (montoFinal vi 0.0691 n )
            else if tasa <= 13 
                then (montoFinal vi 0.0744 n )
                else 0
cetes vi (Meses n) =
        if n == 1
        then (montoFinal vi 0.0609 (n*28))
        else if n <= 6
            then (montoFinal vi 0.0691 (n*28))
            else if n <= 12
                then (montoFinal vi 0.0744 (n*28))
                else 0

{-Función auxiliar m 
    Descripción: es una resta donde se espera recibir un monto inicial y un monto final y la diferencia ser el rendimiento 
    bruto de la inversión que se realizo
    Uso: m 50.50 - 50 = 0.50
-}
m :: Double -> Double -> Double 
m x y = x-y 

{-Función mensajeCetes
    Descripción:De acuerdo a la función anterior (cetes) recibe un monto inicial de inversión, un plazo expresado en días 
    o meses y devuelve un mensaje que indique: El plazo de la inversión, el rendimiento bruto obtenido y el monto acumulado 
    al finalizar el plazo." Despues de n dias , obtuve m de rendimiento bruto sin
asumir ningun riesgo crediticio . El monto total de mi inversion es
de k ."
• n representa el plazo de la inversión
• m representa el rendimiento bruto obtenido.
• k representa el monto total, es decir, el monto inicial más el rendimiento.
    Uso: mensajeCetes 100 (Dias 28) = "Despues de 28 dias, obtuve 0.47366666666665935 de rendimiento bruto sin asumir ningun 
    riesgo crediticio. El monto total de mi inversion es 100.47366666666666" 
-}

mensajeCetes :: Double -> Plazo -> String 
mensajeCetes x (Dias n) =
    let total = cetes x (Dias n)
        montoBruto = m total x 
    in "Despues de " ++ show (round n) ++ " dias, obtuve " ++ show montoBruto ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es " ++ show total
mensajeCetes x (Meses n) = 
    let total = cetes x (Meses n)
        montoBruto = m total x
    in "Despues de " ++ show (round n) ++ " meses, obtuve " ++ show montoBruto ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es " ++ show total

{-Función negativos 
    Descripción: Recibe una lista de números enteros y devuelve un número natural que diga cuantos números negativos contiene la 
    lista
    Uso: negativos [ -1 , 2 , 4 , 6 , -4] = 2 }

negativos :: [Int] -> Int
negativos list = sum [1 | x <- list, x < 0]

{-Función soloPares
    Descripción: Recibe una lista de números enteros y devuelve una lista que contenga solo los números pares de la lista original
    Uso: soloPares [1 ,2 ,3 ,4] = [2 ,4]}

soloPares :: [Int] -> [Int]
soloPares list = [x | x <- list, esParBin x] 

{-Función: primos
    Descripción: Recibe una lista de números naturales y devuelve una lista que contenga solo los números prrimos de la lista original
    Uso: primos [1..20] = [2 , 3 , 5 , 7 , 11 , 13 , 17 , 19] 
-}

primos :: [Int] -> [Int]
primos list = [x | x <- list, x > 1, [y | y <- [1..x], x `mod` y == 0] == [1,x]]

{-Función auxiliar mCD 
    Descripción: Recibe dos números naturales y devuelve una lista con todos los divisores que comparten los dos números
    Uso: mCD 4 8 = [1,2,4]
-}

mCD :: Int -> Int -> [Int]
mCD n m = [x | x <- [1..n], n `mod` x == 0, m `mod` x == 0] 

{-Función coprimos 
    Descripción: Recibe un número natural y obtiene sus coprimos del 1 hasta x (donde x es el número ingresado)
    Uso: coprimos 10 = [1 ,3 ,7 ,9]
-}

coprimos :: Int -> [Int]
coprimos m = [x | x <- [1..m], mCD x m == [1]]