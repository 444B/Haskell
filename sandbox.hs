double :: Num a => a -> a
double x = x + x

double2 :: Num a => a -> a -> a
double2 x y = x * 2 + y * 2

doubleSmallerNumber :: (Ord a, Num a) => a -> a
doubleSmallerNumber x =
  if x > 100
    then x
    else x * 2

lostNumbers :: [Integer]
lostNumbers = [8, 15, 16, 23, 42]

a :: [a]
a = []

b :: [Integer]
b = [5, 4, 3, 2, 1]

conan :: [Char]
conan = "It's a-me, Conan O'Brien!"

empty :: Foldable t => t a -> IO ()
empty x =
  if null x == True
    then print "fff"
    else print "sss"

slice :: [Char]
slice = take 4 conan

sliceoppositedirec :: [Integer]
sliceoppositedirec = drop 3 [8, 4, 2, 1, 5, 6]

scan :: (Eq a, Num a) => a -> Bool
scan n = n `elem` [5, 4, 3, 2, 1]

letters :: [Char]
letters = ['a' .. 'z']

numbers :: [Integer]
numbers = [1 .. 20]


loopy = cycle (["kek "])