import EsParBin (esParBin)
data Plazo = Dias Double | Meses Double deriving (Show, Eq) 

diasmeses :: Double -> Double
diasmeses x = (x / 28)

montoFinal :: Double -> Double -> Double -> Double
montoFinal vi i t = vi * (1 + i * (t / 360.0))

anual :: Int -> Int 
anual x = x `mod` 364 

cetes :: Double -> Plazo -> Double
cetes vi (Dias n) = 
        let tasa = diasmeses n
        in if tasa <= 1
        then montoFinal vi 0.0609 n 
        else if tasa <= 6.5 
            then (montoFinal vi 0.0691 n )
            else if tasa <= 13 
                then (montoFinal vi 0.0744 n )
                else 0
cetes vi (Meses n) =
        if n <= 1
        then (montoFinal vi 0.0609 n)
        else if n <= 6
            then (montoFinal vi 0.0691 n )
            else if n <= 12
                then (montoFinal vi 0.0744 n )
                else 0

m :: Double -> Double -> Double 
m x y = x-y 
mensajeCetes :: Double -> Plazo -> String 
mensajeCetes x (Dias n) =
    let total = cetes x (Dias n)
        montoBruto = m total x 
    in "Despues de " ++ show (round n) ++ " dias, obtuve " ++ show montoBruto ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es " ++ show total
mensajeCetes x (Meses n) = 
    let total = cetes x (Meses n)
        montoBruto = m total x
    in "Despues de " ++ show (round n) ++ " meses, obtuve " ++ show montoBruto ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es " ++ show total

negativos :: [Int] -> Int 
negativos [] = 0
negativos (x:xs) = if x < 0 
                    then 1 + negativos xs
                    else negativos xs

soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) = if esParBin x 
                    then x : soloPares xs 
                    else soloPares xs 

