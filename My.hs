{-
--EPITECH PROJECT, 2021
--FUN_SEMINAR
--File description:
--My.hs
-}

mySucc :: Int -> Int
mySucc x = x + 1

myIsNeg :: Int -> Bool
myIsNeg x =
    if x < 0
        then False
        else True

myAbs :: Int -> Int
myAbs x =
    if x < 0
        then (-x)
        else x

myMin :: Int -> Int -> Int
myMin x y =
    if x < y
        then x
        else y

myMax :: Int -> Int -> Int
myMax x y =
    if x > y
        then x
        else y

myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

myFst :: (a, b) -> a
myFst (a, b) = a

mySnd :: (a, b) -> b
mySnd (a, b) = b

mySwap :: (a, b) -> (b, a)
mySwap (a, b) = (b, a)

myHead :: [a] -> a
myHead [] = error "Empty list"
myHead (x:xs) = x

myTail :: [a] -> [a]
myTail [] = error "Empty list"
myTail (x:xs) = xs

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs