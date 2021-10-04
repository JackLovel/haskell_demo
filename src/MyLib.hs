module MyLib (someFunc) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


f :: Float -> Float
f x = x * x

bmi :: Float -> Float -> Float
bmi h m = m / h^2

mymax :: Integer -> Integer -> Integer
mymax x y = if x > y then x else y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n-1)

fib :: Integer -> Integer
fib n
  | n == 0 = 1
  | n == 1 = 1
  | n > 1 = fib (n-1) + fib (n-2)

mySum :: [Int] -> Int
mySum []  = 0
mySum (x:xs) = x + mySum xs

-- 图书借阅管理

-- 查看某本书的借阅者
borrowers::DataBase -> Book -> [Borrower]
borrowers db book = [p | (p,b) <- db, b == book]

-- 某读者借了几本书

exampleData = [("Alice", "Haskell: The Craft of Functional"),
("Alice", "A river runs through it"),
("Grats", "Haskell functional programming")]