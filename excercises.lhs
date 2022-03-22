-- Chapter 5 excercises

1. Functions:
a) not :: Bool -> Bool
b) length :: [a] -> Int
c) concat :: [[a]] -> [a]
d) head :: [a] -> a
e) (<) :: Ord a => a -> a -> Bool
-- Copied and pasted


> funcIgnoresArgs :: a -> a -> a -> String
> funcIgnoresArgs x y z = "Blah"

> nonsense :: Bool -> Integer 
> nonsense True = 805
> nonsense False = 31337


Lets do these excercises. These last few examples melted my brain

let f :: a -> a -> a -> a; f = undefined
let x :: Char; x = undefined
:t f x

let g :: a -> b -> c -> b; f = undefined

:t f x