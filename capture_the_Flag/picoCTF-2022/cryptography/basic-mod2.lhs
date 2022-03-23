Name: 44 4b
Date: 23 March 2022
CTF: PicoCTF Sping 2022
Topic: Cryptography
Challenge: basic-mod2
copied from basic-mod1

V We make a list of Integers, from the file provided from the CTF

> ctfList :: [Integer]
> ctfList = [145, 126, 356, 272, 98, 378, 395, 352, 392, 215, 446, 168, 180, 359, 51, 190, 404, 209, 185, 115, 363, 431, 103]

V The following taked in variable a, modular m abd returns the modular inverse

> gcdExt a 0 = (1, 0, a)
> gcdExt a b = let (q, r) = a `quotRem` b
>                  (s, t, g) = gcdExt b r
>              in (t, s - q * t, g)
> modInv a m = let (i, _, g) = gcdExt a m
>             in if g == 1 then Just (mkPos i) else Nothing
>  where mkPos x = if x < 0 then x + m else x

V A function to quickly apply a modular inverse of vale a to 41

> modInv41 :: Integral a => a -> Maybe a
> modInv41 a = modInv a 41

> modList = map (modInv41) ctfList

V modList creates answers of type Maybe a (Integer specifically) so we need to convert it

> getMayBeValue :: Maybe Integer -> Integer
> getMayBeValue x =
>     case x of
>           Nothing -> 0
>           Just val -> val

> finalList = map getMayBeValue modList

V New list since they changed uppercases and 

> alphaMap :: (Eq a, Num a) => a -> Char
> alphaMap x
>    | x == 1 = 'a'
>    | x == 2 = 'b'
>    | x == 3 = 'c'
>    | x == 4 = 'd'
>    | x == 5 = 'e'
>    | x == 6 = 'f'
>    | x == 7 = 'g'
>    | x == 8 = 'h'
>    | x == 9 = 'i'
>    | x == 10 = 'j'
>    | x == 11 = 'k'
>    | x == 12 = 'l'
>    | x == 13 = 'm'
>    | x == 14 = 'n'
>    | x == 15 = 'o'
>    | x == 16 = 'p'
>    | x == 17 = 'q'
>    | x == 18 = 'r'
>    | x == 19 = 's'
>    | x == 20 = 't'
>    | x == 21 = 'u'
>    | x == 22 = 'v'
>    | x == 23 = 'w'
>    | x == 24 = 'x'
>    | x == 25 = 'y'
>    | x == 26 = 'z'
>    | x == 27 = '0'
>    | x == 28 = '1'
>    | x == 29 = '2'
>    | x == 30 = '3'
>    | x == 31 = '4'
>    | x == 32 = '5'
>    | x == 33 = '6'
>    | x == 34 = '7'
>    | x == 35 = '8'
>    | x == 36 = '9'
>    | x == 37 = '_'

map alphaMap finalList is the solution 

> flag :: [Char]
> flag = map alphaMap finalList


​
flag is "1nv3r53ly_h4rd_374be7bb"