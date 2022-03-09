sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")
triple :: Num a => a -> a
triple x = x * 3
double :: Num a => a -> a
double x = x * 2
perimeter x y = x * 2 + y * 2

f :: Fractional a => a -> a
f x = x / (2 + 9)


printInc' n =
    (\plusTwo -> print plusTwo) (n + 2)