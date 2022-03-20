
> data Mood = Blah | Woot deriving Show

1. What is the type constructor, or name of this type?
    - The type constructor is "Mood"

2. If the function requires a Mood value, what are the values you
could possibly use there?
    - The possible values are either Blah or Woot.

3. We are trying to write a function changeMood to change Chris’s
mood instantaneously. So far, we’ve written a type signature
changeMood :: Mood -> Woot. What’s wrong with that?
    - We have written a function that takes in a Type and returns a value
    We should state changeMood :: Mood -> Mood so that it works and returns a Type
    The Type will be one of the values in term level code.

4. Now we want to write the function that changes his mood. Given
an input mood, it gives us the other one. Fix any mistakes and
complete the function:

> changeMood :: Mood -> Mood
> changeMood Woot = Blah
> changeMood Blah = Woot

5. Enter all of the above — datatype (including the “deriving Show”
bit), your corrected type signature, and the corrected function
into a source file. Load it and run it in GHCi to make sure you
got it right.

- Works :)

Page 121 Excercises

1. not True && true
-- False


2. not (x = 6)
We need to first bring x into scope

> x :: Integer 
> x = 6

now we can say not (x == 6)
-- False

3. (1 * 2) > 5
-- False


4. [Merry] > [Happy]
-- error since they are not formatted as strings. 
Once we fix it to say ["Merry"] > ["Happy"], we get
-- True


5. [1, 2, 3] ++ "look at me!"
-- projected error. we can now concatenate a list of integers and a string
it works if we say "[1, 2, 3]" ++ "look at me!"
-- "[1, 2, 3]look at me!"

4.7 excercises

> awesome = ["Papuchon", "curry", ":)"]
> alsoAwesome = ["Quake", "The Simons"]
> allAwesome = [awesome, alsoAwesome]

1. Given the definition of length above, what would the type signature be? How many arguments, of what type does it take? What
is the type of the result it evaluates to?
-- The type would be length :: [a] -> Integer
Correct answer: 
length :: Foldable t => t a -> Int

2. What are the results of the following expressions?
a) length [1, 2, 3, 4, 5]
-- 5 (correct)
b) length [(1, 2), (2, 3), (3, 4)]
-- 3 (correct)
c) length allAwesome
-- 2 (correct)
d) length (concat allAwesome)
-- allAwesome would reduce to awesome and alsoAwesome
-- after concat there would be 5 elements in the list
-- Final answer = 5 (Correct! :)


3. Given what we know about numeric types and the type signature
of length, look at these two expressions. One works and one
returns an error. Determine which will return an error and why.
(n.b., If you’re checking the type signature of length in GHC
7.10, you will find Foldable t => t a representing [a], as with
concat in the previous chapter. Again, consider Foldable t to
represent a list here, even though list is only one of the possible
types. We will explain it in detail later.)

Prelude> 6 / 3
-- this will work
Prelude> 6 / length [1, 2, 3]
-- this will fail owing to the order that it gets solved. Lets test
-- brackets doesnt fix. No fractional Int in the function

4. How can you fix the broken code from the preceding exercise
using a different division function/operator?
-- we can use `div` since this will not rely on a Fractional type such as in /

5. What is the type of the expression 2 + 3 == 5? What would we
expect as a result?
-- we get a Bool and we can expect a True to be printed


6. What is the type and expected result value of the following:
Prelude> let x = 5
Prelude> x + 3 == 5
False, of type Int.
-- wrong, it is of type x :: Num p => p


7. Below are some bits of code. Which will work? Why or why not?
If they will work, what value would these reduce to?
Prelude> length allAwesome == 2
-- True
Prelude> length [1, 'a', 3, 'b']
-- error, not all the same type
Prelude> length allAwesome + length awesome
-- 8 ( wrong, was 5)
Prelude> (8 == 8) && ('b' < 'a')
-- True (it was false since ('b' < 'a') == False )
Prelude> (8 == 8) && 9
-- No result, comparing it to just 9, doesnt make sense

8. Write a function that tells you whether or not a given String (or
list) is a palindrome. Here you’ll want to use a function called
’reverse,’ a predefined function that does just what it sounds like.
reverse :: [a] -> [a]
reverse "blah"
"halb"

> isPalindrome :: (Eq a) => [a] -> Bool
> isPalindrome x = if (x == reverse x) then True else False


9. Write a function to return the absolute value of a number using
if-then-else

> myAbs :: Integer -> Integer
> myAbs x = if (x < 0) then (negate x) else x


10. Fill in the definition of the following function, using fst and
snd:

> f :: (a, b) -> (c, d) -> ((b, d), (a, c))
> f x y = ((snd  x, snd y),(fst x, fst y))

-- Damn that actually worked