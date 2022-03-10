-- print3broken.hs
module Print3Broken where

    --greeting = "Yarrrr!"
    printSecond :: IO ()
    printSecond = do
      putStrLn greeting 

    main :: IO ()
    greeting :: [Char]
    greeting = "Pizza time"
    main = do
      putStrLn greeting
      printSecond
