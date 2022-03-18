{###########################################################}

firstLiterate.lhs

444B, January 2022

The purpose of this script is practice
    - a place to document and practice Haskell
    - test the applicability of Literate Programming

TODO

- https://www.youtube.com/watch?v=eis11j_iGMs
- set up VIM as editor for Haskell
- NO COPY/PASTE

IDEAS
- test an input for < 10


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
    -Note: will walk through the whole left side list. More efficient to add to the LHS with a :
:
    - adds to the beginning og a list
        - 'A':" SMALL CAT"
            -> "A SMALL CAT"
!!
    - gets an element from a list (indices start at 0)
        - "Steve Buscemi" !! 6
            -> 'B'
head - tail - init - last 
  HEAD| T  A  I  L  
    [0,1,2,3,4,5,6]
    I   N   I  T|L A S T
length
    - returns a length of a string
null
    - checks if a list is empty. Returns True if empty 
    - null [1,2,3] 
        -> False
reverse
    - reverses a list
    - reverse [5,4,3,2,1]   
        -> [1,2,3,4,5]  
take
    - takes number and a list. It extracts that many elements from the beginning of the list
    - take 3 [5,4,3,2,1]
        -> [5,4,3]
    - Notes: returns whole list if requested number is greater than length
drop
    - similar to take except drops from original list
    - drop 2 [2,4,6,8]
        -> [6,8] 
maximum
    - like it says on the box
minimum
    - as expected 
sum 
    - takes a list of numbers and returns their sum 
    - sum [2,4,6]
        -> 12
product
    - takes a list of numbers and returns their product 
    - product [2,3,5]
        -> 30
`elem`
    - checks is an item is in a list
    - 4 `elem` [3,4,5,6] 
        -> True 
cycle 
    - takes a list and cycles it into an infinite list 
    - take 5 (cycle "LOL ")
        -> "LOL L"
repeat 
    - takes an element and produces and infinite list of just that element 
    - take 10 (repeat 5)
        -> [5,5,5,5,5,5,5,5,5,5] 
odd
    - returns True on an odd number and False on an even number>
makeUpperCase
    - takes a string and returns a new string with all the letters in uppercase
    - makeUpperCase "hello"
        -> "HELLO"
makeLowerCase
    - takes a string and returns a new string with all the letters in lowercase
    - makeLowerCase "HELLO"
        -> "hello"

{###########################################################}



{##############################################################################################################################################}

--- ( Type Constructors ) ---
-- Num typeclases --
Int (Should not be used unless performance needed in hardware limited)
    - Machine sized integers 
    - Limits are -9,223,372,036,854,775,808..9,223,372,036,854,775,807
        -> currentyear :: Int 
        -> currentYear = 2021
Integer
    - Arbitrary precison integers
        -> atomsInUniverse :: Integer
        -> atomsInUniverse 7 * (10 ^ 27)
Float
    - Single Precision Floating Point
    - We almost never want a float
        -> pi1 :: Float
        -> pi1 = 3.14
Double 
    - Double Precision Floating Point
        -> pi1 :: Double 
        -> pi1 = 3.14
Rational
    - fractional number that represents ratio of two integers
        -> rationalFraction :: Rational
        -> rationalFraction = 1 / 2
            -> 100 * rationalFraction
            -> 50 % 1
Scientific
    - space efficient scientific number type. 
    - coefficient stored as Integer, Exponent stored as Int
    - must be imported. 
        -> import Data.Scientific as Scientific
        -> scientificValue :: Scientific
        -> scientificValue = 12345678901234567890
            -> 1.234567890123456789e19
-- /Num typeclases --
Booleans
    - Logic 
        -> isHaskellTheBest :: Bool 
        -> isHaskellTheBest = True 
        -> isHaskellHard :: Bool 
        -> isHaskellHard = False 
Char 
    - Unicode Characters 
        -> myNameStartsWith :: Char 
        -> myNameStartsWith = 'F'
String 
    - List of characters
        -> lukesFather :: String
        -> lukesFather :: "Darth Vader"

{##############################################################################################################################################}

--- ( Typeclasses ) ---
Num
Ord - everything that can be ordered
Eq - everything that can be compared
Bool - Boolean Values

{##############################################################################################################################################}

-- Because apparently unlinter needs at least one line of actual haskell to be compiled

> x :: Integer
> x = 420

