Name: 44 4b
Date: 23 March 2022
CTF: PicoCTF Sping 2022
Topic: Cryptography
Challenge: basic-mod1

Lets place the "weird message" as a list of Integers in a function called ctfList

> ctfList :: [Integer]
> ctfList = [387, 248, 131, 272, 373, 221, 161, 110, 91, 359, 390, 50, 225, 184, 223, 137, 225, 327, 42, 179, 220, 365]

Now lets make a function that takes in an Integer x and returns mod 37 of it

> mod37 :: Integer -> Integer
> mod37 x = x `mod` 37

we use this to generate the modded list, named modList

> modList :: [Integer]
> modList = map mod37 ctfList

then we need a functiont that will logically map each of the 

> alphaMap :: (Eq a, Num a) => a -> Char
> alphaMap x
>    | x == 0 = 'A'
>    | x == 1 = 'B'
>    | x == 2 = 'C'
>    | x == 3 = 'D'
>    | x == 4 = 'E'
>    | x == 5 = 'F'
>    | x == 6 = 'G'
>    | x == 7 = 'H'
>    | x == 8 = 'I'
>    | x == 9 = 'J'
>    | x == 10 = 'K'
>    | x == 11 = 'L'
>    | x == 12 = 'M'
>    | x == 13 = 'N'
>    | x == 14 = 'O'
>    | x == 15 = 'P'
>    | x == 16 = 'Q'
>    | x == 17 = 'R'
>    | x == 18 = 'S'
>    | x == 19 = 'T'
>    | x == 20 = 'U'
>    | x == 21 = 'V'
>    | x == 22 = 'W'
>    | x == 23 = 'X'
>    | x == 24 = 'Y'
>    | x == 25 = 'Z'
>    | x == 26 = '0'
>    | x == 27 = '1'
>    | x == 28 = '2'
>    | x == 29 = '3'
>    | x == 30 = '4'
>    | x == 31 = '5'
>    | x == 32 = '6'
>    | x == 33 = '7'
>    | x == 34 = '8'
>    | x == 35 = '9'
>    | x == 36 = '_'

map alphaMap modList is the solution 

> flag :: [Char]
> flag = map alphaMap modList

"R0UND_N_R0UND_B0D5F596"