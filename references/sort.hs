isort :: [Int] -> [Int]
isort []      = []
isort (x : xs ) = x `insert` ( isort xs ) where
    insert :: Int -> [Int] -> [Int]
    insert x [] = [x]
    insert x (y : ys )
        | x > y     = y : insert x ys
        | otherwise = x : y : ys
