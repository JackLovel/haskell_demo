module MyLib (someFunc) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


f :: Float -> Float
f x = x * x

bmi :: Float -> Float -> Float
bmi h m = m / h^2

mymax :: Integer -> Integer -> Integer
mymax x y = if x > y then x else y


