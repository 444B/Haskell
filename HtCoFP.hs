between :: Int -> Int -> Int -> Bool
between x y z = x < y && y < z

middleNumber :: Int -> Int -> Int -> Int
middleNumber x y z
    | between y x z = x
    | between x y z = y
    | between y z x = z

-- Will revisit this excercise in the book tonight