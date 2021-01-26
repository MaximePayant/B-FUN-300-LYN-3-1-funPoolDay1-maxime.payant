{-
--EPITECH PROJECT, 2021
--FUN_SEMINAR
--File description:
--My.hs
-}

mySucc :: Integer -> Integer
mySucc x = x + 1

myIsNeg :: Integer -> Bool
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