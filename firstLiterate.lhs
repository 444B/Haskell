{###########################################################}

firstLiterate.lhs

444B, January 2022

The purpose of this script isDenormalized
    - a place to document and practice Haskell
    - test the applicability of Literate Programming

{###########################################################}

--- Function examples ---

succ
	- provided a defined successor 
    - succ 9
        -> 10
min
	- provides the minimum
    - min 2 7
        -> 2
max
	- provides the maximum
    - max 2 7
        -> 7
++
    - concatenates two lists
    - [1,2,3,4] ++ [9,10,11,12] 
        -> [1,2,3,4,9,10,11,12]

{##############################################################################################################################################}

--- Types ---
Int 
    - Machine sized integers 
        -> currentyear :: Int 
        -> currentYear = 2021
Integer
    - Arbitrary precison integers
        -> atomsInUniverse :: Integer
        -> atomsInUniverse 7 * (10 ^ 27)
Double 
    - Double Precision Floating Point
        -> pi1 :: Double 
        -> pi1 = 3.14
Float
    - Single Precision Floating Point
        -> pi1 :: Float
        -> pi1 = 3.14
Booleans
    - Logic 
        -> isHaskellTheBest :: Bool 
        -> isHaskellTheBest = True 
        -> isHaskellHard :: Bool 
        -> isHaskellHard = False 
Char 
    - Unicode Characters 
        -> myNameStartsWith :: Char 
        ->myNameStartsWith = 'F'
String 
    - List of characters
        -> lukesFather :: String
        -> lukesFather :: "Darth Vader"

{##############################################################################################################################################}

> doubleSmallerNumber :: (Ord a, Num a) => a -> a
> doubleSmallerNumber x =
>  if x > 100
>    then x
>    else x * 2

In the above we see that "IF" statements in Haskell must return an expression
