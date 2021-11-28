--import some modules
import Data.List ()
import System.IO () 

-- Int -2^63 2^63
minInt = minBound :: Int
maxInt = maxBound :: Int

-- Double (up to 11 points of accuracy)
bigFloat = 3.99999999999 + 0.00000000005

-- Bool True False
-- Char ''

-- Lists, Numbers
sumOfNums = sum [1..1000]
addex = 5+7
subEx = 5-7
modEx = mod 5 4
modEx2 = 5 `mod` 4
negNumEx = 5 + (-4)

{-
:t sqrt
    this command in GHC will give us a breakdown of the expected inputs and outputs

*Main> :t sqrt
sqrt :: Floating a => a -> a

-}