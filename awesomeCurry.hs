module AwesomeCurry where

string :: [Char]
string = "Curry is awesome!"

addExclamation :: [Char] -> [Char]
addExclamation x = x ++ "!"

targets :: [Char]
targets = "Curry is awesome"

rvrs :: [Char] -> [Char]
rvrs x = (drop 9 x) ++ " " ++ (take 3 (drop 6 x)) ++ (take 5 x)