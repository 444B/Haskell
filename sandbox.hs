double :: Num a => a -> a
double x = x + x

double2 x y = x * 2 + y * 2

doubleSmallerNumber x =
  if x > 100
    then x
    else x * 2

conanO'Brien = "It's a-me, Conan O'Brien!"

lostNumbers = [8, 15, 16, 23, 42]

a = []

b = [5, 4, 3, 2, 1]

empty x =
  if null x == True
    then print "fff"
    else print "sss"
