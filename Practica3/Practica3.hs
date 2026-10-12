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
negativos list = sum [1 | x <- list, x < 0]

soloPares :: [Int] -> [Int]
soloPares list = [x | x <- list, esParBin x] 

negativosh :: [Int] -> Int 
negativosh [] = 0
negativosh (x:xs) = if x < 0 
                    then 1 + negativosh xs
                    else negativosh xs

soloParesh :: [Int] -> [Int]
soloParesh [] = []
soloParesh (x:xs) = if esParBin x 
                    then x : soloParesh xs 
                    else soloParesh xs 

primos :: [Int] -> [Int]
primos list = [x | x <- list, x > 1, [y | y <- [1..x], x `mod` y == 0] == [1,x]]

mCD :: Int -> Int -> [Int]
mCD n m = [x | x <- [1..n], n `mod` x == 0, m `mod` x == 0] 

coprimos :: Int -> [Int]
coprimos m = [x | x <- [1..m], mCD x m == [1]]
