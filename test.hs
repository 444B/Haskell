sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

double x = x * 2

foo x =
    let x = 3 
        y = 4
    in 2 * y

x = 7
y = 10
f = x + y