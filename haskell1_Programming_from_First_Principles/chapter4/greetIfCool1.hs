-- greetIfCool1.hs
module GreetIfCool1 where
    greetIfCool :: String -> IO ()
    greetIfCool coolness =
        if cool
            then putStrLn "Eyyyy whats shakin'?"
        else
            putStrLn "pssshhhhh"
        where cool = coolness == "downright frosty yo"

