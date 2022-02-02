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

printInc n = print n

mult1 = x * y
  where
    x = 5
    y = 6

one = x
  where
    x = 5

two = x * x
  where
    x = 5

three = x * y
  where
    x = 5
    y = 6

four = x + 3
  where
    x = 3
    y = 1000

one' = x * 3 + y
  where
    x = 3
    y = 1000

two' = x * 5
  where
    y = 10
    x = 10 * 5 + y

three' = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10



