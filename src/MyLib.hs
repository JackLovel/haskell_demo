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

add1 :: Num a => a -> a->a
add1 x y = x + y

myMax :: Ord a => a->a->a
myMax x y = if x > y then x else y

doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = 2 * x : doubleAll xs

doubleAll2 :: [Int] -> [Int]
doubleAll2 xs = [2 * x | x<-xs]

-- lambda
double = \x->2*x

doubleAll3 :: [Int] -> [Int]
doubleAll3 xs = map (\x->2*x) xs

-- 自定义代数数据类型
data Season = Spring | Summer | Fail | Winter
  deriving(Eq, Show)

next::Season -> Season
next spring = summer
next summer = fail
next fail = winter
next winter = spring

{--
   定义包括 圆 和长方形
-}

data shape = circle float | rectangle float float
 deriving(eq, show)

-- area (circle 2)
area :: shape->float
area(circle r) = pi * r^2
area(rectangle a b) = a * b


-- 表达式建模
data expr =
  num int |add expr expr |mul expr expr
  deriving (eq, show)

e1 = mul (add(num 1) (num 2)) (num 3)

eval :: expr -> int
eval (num n) = n
eval (add a b) = eval a + eval b
eval (Mul a b) = eval a * eval b
