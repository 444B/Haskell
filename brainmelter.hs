-- Lets do these excercises. These last few examples melted my brain
-- This file was originally a .lhs file and is not meant to be run in .hs form

-- 1.
let f :: a -> a -> a -> a; f = undefined
-- a -> (a -> (a -> a))
let x :: Char; x = undefined
:t f x
f x :: Char -> Char -> Char -- Result

-- 2.
let g :: a -> b -> c -> b; g = undefined
-- a -> (b -> (c -> b))
:t g 0 'c' "woot" 
g 0 'c' "woot" :: Char -- Result

-- 3.
let h :: (Num a, Num b) => a -> b -> b; h = undefined
-- a -> (b -> b)
:t h 1.0 2
h 1.0 2 :: Num b => b

-- 4. 
let h :: (Num a, Num b ) => a -> b -> b; h = undefined
-- a -> (b -> b)
:t h 1 (5.5 :: Double)
h 1 (5.5 :: Double) :: Double -- result

-- 5.
let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
-- a -> (b -> a)
:t jackal "Keyboad" "Has the work Jackal in it"
jackal "Keyboad" "Has the work Jackal in it" :: [Char] -- result

-- 6.
let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
-- a -> (b -> a)
:t jackal "Keyboad"
jackal "Keyboad" :: Eq b => b -> [Char] -- result

-- 7.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel 1 2
kessel 1 2 :: (Ord a, Num a) => a -- result

-- 8.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel 1 (2 :: Integer)
kessel 1 (2 :: Integer) :: (Ord a, Num a) => a -- result

-- 9.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel (1 :: Integer)
kessel (1 :: Integer) :: b -> ( 1 : Integer)
kessel (1 :: Integer) :: Num b => b -> Integer -- result