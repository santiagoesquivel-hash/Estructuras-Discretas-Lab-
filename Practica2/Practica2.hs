{-Función reconversion
    Descripción: Al número que se recibe se le quita 3 ceros 
    Uso: reconversion 382 = 0.382
-}
reconversion :: Double -> Double
reconversion x = x/1000

{-Función cashback
    Descripción: Calcula el 10% sobre un valor
    Uso: cashback 890 = 89
-}

cashback :: Double -> Double
cashback x = x* 0.10 

{-Función cashback_monto 
    Descripción: Calcula el 10% del valor y lo muestra 
    Uso: cashback_monto 928 = 92.8
-}

cashback_monto :: Double -> IO ()
cashback_monto y = 
    if y * 0.10 < 20
    then putStrLn("Sumaste " ++ show y ++ " pumapuntos K NUV XD")
    else putStrLn("Sumaste " ++ show y ++ " pumapuntos K PRO :O")

{-Función MinutosHoras 
    Descripción: Se recibe un número (que pretenden ser los minutos) y se convierte a horas con minutos
    Uso: minutosHoras 85 = 1 hora y 25 minutos
-}

minutoshoras :: Int -> String
minutoshoras x = 
    let horas = x `div` 60 
        minutos = x `mod` 60
    in 
        if horas == 1
        then show horas ++ " hora y "
        else show horas ++ " horas y " 
        ++ show minutos 
           ++ if minutos == 1
              then " minuto"
              else " minutos"


{-Función esEstafa
    Descripción: Ingresan 4 números los cuales son un costo, un Billete que rebasa el costo (billeteGrande), consecutivamente un billete igual al costo (billeteExacto) y el cambio que se pretende dar y si esque se da un cambio que no se debe darse será verdadera la estafa
    Uso: esEstafa 100 200 100 0 = true 
    -}

esEstafa :: Int -> Int -> Int -> Int -> Bool 
esEstafa costo primerBillete  segundoBillete cambioDevuelto = 
    if (segundoBillete - primerBillete + cambioDevuelto - costo) == 0
    then False
    else True 

{- Función esDescendente 
    Descripción:Recibe 4 valores los cuales se comparan entre sí para ver que cada número es menor que el anterior y si no es False
    Uso:esDescendente 5 4 3 2 = True 
-}

esDescendente :: Double -> Double -> Double-> Double -> Bool
esDescendente primero segundo tercero cuarto =
    primero > segundo &&
    segundo > tercero &&
    tercero > cuarto 

{- Función imc
    Descripción:Ingresas tu peso en kg y tu estatura en cm y calcula de acuerdo con los parametros que indica la OMS 
    Uso:imc 53.5 161 = normal 
-}

imc :: Double -> Double -> String 
imc peso estatura = 
    if estatura < 3
    then if (peso/((estatura/100)*(estatura/100))) <= 18.5 
         then "bajo de peso"
         else if
         (peso/((estatura/100)*(estatura/100))) <= 25
         then "normal"
         else if (peso/((estatura/100)*(estatura/100))) < 30
            then "sobrepeso"
            else "obeso"
    else if (peso/(estatura*estatura)) <= 18.5 
        then "bajo de peso"
        else if
        (peso/(estatura*estatura)) <= 25
        then "normal"
        else if (peso/(estatura)*(estatura)) < 30
           then "sobrepeso"
            else "obeso"

{- Función hipotenusa 
    Descripción:se introduce un valor que representa la base de un triangulo rectangulo y un valor h dando la altura del mismo triangulo EN ESE ORDEN y se calculara la hipotenusa y la mostrará
    Uso:hipotenusa 9.0 12.0 = 15.0 
-}

hipotenusa :: Float -> Float -> Float
hipotenusa base altura = sqrt ((base*base)+(altura*altura))

{- Función Pendiente 
    Descripción: Calcula la distancia entre dos puntos con las coordenadas introducidas
    Uso: distanciaPuntos distanciaPuntos (2,1) (5,5) = 5
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float 
pendiente (x1,y1) (x2,y2) = ((y2-y1)/(x2-x1)) 

{- Función distanciaPuntos 
    Descripción: Calcula la distancia entre dos puntos con las coordenadas introducidas
    Uso: distanciaPuntos distanciaPuntos (2,1) (5,5) = 5
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1,y1) (x2,y2) = sqrt (((x2-x1)*(x2-x1)) + ((y2-y1)*(y2-y1)))