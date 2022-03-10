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

    e) 4 !! "hello"
        Yes, this will return the character "o"

    f ) (!!) "hello" 4
        No, this will not work since "Hello is being applied to 4"
    
    g) take "4 lovely"
        No, this will not work since we are not applying enough arguments to "take"

    h) take 3 "awesome"
        Yes, this will work and we will return a result of "awes"
