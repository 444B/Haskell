-- starting out
double :: Num a => a -> a
double x = x + x

double2 :: Num a => a -> a -> a
double2 x y = x * 2 + y * 2

doubleSmallerNumber :: (Ord a, Num a) => a -> a
doubleSmallerNumber x =
  if x > 100
    then x
    else x * 2


-- LISTS
lostNumbers :: [Integer]
lostNumbers = [8, 15, 16, 23, 42]

a :: [a]
a = []

b :: [Integer]
b = [5, 4, 3, 2, 1]

conan :: [Char]
conan = "It's a-me, Conan O'Brien!"



-- just testing using multiple variables in a function
mathsfun :: Floating a => a -> a -> a -> a
mathsfun x y z = ((x*x) + (y-(double y)))**z
