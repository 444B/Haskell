1. For the following lines of code, read the syntax carefully and
decide if they are written correctly. Test them in your REPL after
you've decided to check your work. Correct as many as you can.
    a) concat [[1, 2, 3], [4, 5, 6]]
        Yes, this will work correctly since it is 2 lists
        On second thought, concat is being fed one list. This will not work
        -- incorrect
        On third thought, I was wrong. This was able to return the right result.

    b) ++ [1, 2, 3] [4, 5, 6]
        No, This will not work since we need the ++ operator to be within brackets (++)
        -- Correct

    c) (++) "hello" " world"
        Yes, this will work since we have 2 lists and the operator is used properly
        -- correct

    d) ["hello" ++ " world]
        No, this is not a command but a string and the argument world
        -- correct but with a more precise answer, we notice that the string world is missing a "

    e) 4 !! "hello"
        Yes, this will return the character "o"
        I am changing my answer to no. We need to use "hello" !! 4 to get a result
        -- second answer correct

    f ) (!!) "hello" 4
        No, this will not work since "Hello is being applied to 4"
        In review of the last question, this may actually work
        I am changing my answer to Yes.
        -- correct (yay!)
    
    g) take "4 lovely"
        No, this will not work since we are not applying enough arguments to "take"
        -- correct

    h) take 3 "awesome"
        Yes, this will work and we will return a result of "awes"
        -- almost correct. Returned answer was "awe". The reason for this is that take command
        acts like slice in python except it doesnt work on indexes. 

Next we have two sets: the first set is lines of code and the other is
a set of results. Read the code and figure out which results came
from which lines of code. Be sure to test them in the REPL.
    a) concat [[1 * 6], [2 * 6], [3 * 6]]
    b) [6,12,18]

    b) "rain" ++ drop 2 "elbow"
    c) "rainbow"

    c) 10 * head [1, 2, 3]
    e) 10

    d) (take 3 "Julie") ++ (tail "yes")
    a) "Jules"

    e) concat [tail [1, 2, 3],
               tail [4, 5, 6], 
               tail [7, 8, 9]]
    b) [2,3,5,6,8,9]

    Building functions

    Given
    a) -- Given
    "Curry is awesome"
    -- Return
    "Curry is awesome!"

> "Curry is awesome" ++ "!"

    b) -- Given
    "Curry is awesome!"
    -- Return
    "y"

> "Curry is awesome!" !! 4

this returns 'y' which is not the same as "y"

we can get that by the following 

> head (drop 4 "Curry is awesome!")

this also returns a 'y' 
hmmmmmm

    c) -- Given
    "Curry is awesome!"

    -- Return
    "awesome!"

> drop 9 "Curry is awesome!"

