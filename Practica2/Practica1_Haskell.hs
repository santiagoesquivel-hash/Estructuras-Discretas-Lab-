{-Función reconversion
    Descripción: Al número que se recibe se le quita 3 ceros 
    Uso: reconversion 382 = 0.382
-}
reconversion :: Double -> Double
reconversion x = x/1000

{-Función cashback
    Descripción:
    Uso:
-}

cashback :: Double -> Double
cashback x = x* 0.10 
{-Función cashback_monto 
    Descripción:
    Uso:
-}

cashback_monto :: Double -> IO ()
cashback_monto y = 
    if y * 0.10 < 20
    then putStrLn("Tienes " ++ show y ++ " pumapuntos K NUV XD")
    else putStrLn("Tienes " ++ show y ++ " pumapuntos K PRO :O")



