
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