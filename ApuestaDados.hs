import System.Random

apuestaDados :: IO ()
apuestaDados = do
    number <- randomRIO (1,6) :: IO Int
    number2 <- randomRIO (1,6) :: IO Int
    putStrLn ("Se lanzan los dados....")
    putStrLn ("El primer dado es: "++show number)
    putStrLn ("El segundo dado es: "++show number2)

    if number==number2 then putStrLn ("Empate!!")
       else 
          if number < number2 then putStrLn ("Gana segundo dado: "++show number2)
          else putStrLn ("Gana primer dado: "++show number)

jugar :: IO ()
jugar = do
apuestaDados