-- template examples for REPL testing --
double :: Num a => a -> a
double x = x * 2
multiply :: Num a => a -> a -> a
multiply x y = x * y
numList :: [Integer]
numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
charList :: [Char]
charList = "Chupapi Munyanyo"
-- template examples for REPL testing --



getMayBeValue :: Maybe Integer -> Integer
getMayBeValue x =
    case x of
          Nothing -> 0
          Just val -> val