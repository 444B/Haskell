-- template examples for REPL testing --
double :: Num a => a -> a
double x = x * 2
multiply :: Num a => a -> a -> a
multiply x y = x * y
numList :: [Integer]
numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
charList :: [Char]
charList = "Chupapi Munyanyo"
-- -- template examples for REPL testing --

buyPrice :: Double
buyPrice = 1.3
buyAmount :: Double
buyAmount = 2500

initialInvestment :: Double
initialInvestment = buyPrice * buyAmount

profit sellPrice = ( buyAmount * sellPrice ) - initialInvestment


