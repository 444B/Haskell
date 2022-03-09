-------------------------------------------------------------
-- page 80
--1. result will be 5 (correct)
ex1_80 :: Integer
ex1_80         = x
    where x = 5
--2. result will be 25 (correct)
ex2_80 :: Integer
ex2_80         = x * x 
    where x = 5
--3. result will be 30 (correct)
ex3_80 :: Integer
ex3_80         = y * x
    where x = 5
          y = 6
--4.result will be 6 (correct)
ex4_80 :: Integer
ex4_80         = x + 3
    where x = 3 
          y = 1000
-------------------------------------------------------------

ex1_82 :: Integer -- prediction is 1009
ex1_82      = x * 3 + y
    where x = 3
          y = 1000

ex2_82 :: Integer -- prediction is 300 (correct)
ex2_82      = x * 5
    where y = 10
          x = 10 * 5 + y

ex3_82 :: Double -- prediction is -70 / 7 == -10 -7 == *-17* (Correct but forgot to make it -17.0)
ex3_82     = z / x + y
    where x = 7
          y = negate x
          z = y * 10

waxOn :: Integer
waxOn       = x * 5
    where z = 7
          x = y ^ 2
          y = z + 8

triple x = x * 3
waxOff x = triple x

-- Chapter 3, page 96
-- 1. Yes, y is in scope for Z
-- 2. No, h is not in scope for function g
-- 3. Yes, everything is in scope to execute the area function -- Incorrect, d is not in scope
-- area d = pi * (r * r)
-- r = d / 2
-- 4. Hmmm... I a not sure
-- area d = pi * (r * r)
--   where r = d / 2
-- turns out I was wrong, it was necessary to define it within the scope of the area function

-- chapter 3, page 99
-- 1. ++ [1, 2, 3] [4, 5, 6] 
--Yes, this will compile since they are both of the same types (num)
-- Error, we needed to place the ++ in between the lists since ++ is an infixr
-- or use (++) at the beginning

-- 2. '<3' ++ 'Haskell'
-- No, this will not compile since we are using single quotes and this is not how we denote a string
-- we use a single quote for individual characters
-- correct

-- 3. concat ["<3", " Haskell"]
-- Yes, this will compile since we are taking two lists
-- yay it worked