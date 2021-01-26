{-
--EPITECH PROJECT, 2021
--FUN_SEMINAR
--File description:
--My.hs
-}

mySucc :: Int -> Int
mySucc x = x + 1

myIsNeg :: Int -> Bool
myIsNeg x | x < 0 = True
          | otherwise = False

myAbs :: Int -> Int
myAbs x | x < 0 = (-x)
        | otherwise = x

myMin :: Int -> Int -> Int
myMin x y | x < y = x
          | otherwise = y

myMax :: Int -> Int -> Int
myMax x y | x > y = x
          | otherwise = y

myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

myFst :: (a, b) -> a
myFst (a, _) = a

mySnd :: (a, b) -> b
mySnd (_, b) = b

mySwap :: (a, b) -> (b, a)
mySwap (a, b) = (b, a)

myHead :: [a] -> a
myHead [] = error "Empty list"
myHead (x:_) = x

myTail :: [a] -> [a]
myTail [] = error "Empty list"
myTail (_:xs) = xs

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

myNth :: [a] -> Int -> a
myNth [] _ = error "Wrong index"
myNth (x:_) 0 = x
myNth (_:xs) a = myNth xs (a - 1)

myTake :: Int -> [a] -> [a]
myTake a _ | a < 0 = error "Wrong Index"
myTake _ [] = []
myTake 0 _ = []
myTake a (x:xs) = x : myTake (a - 1) xs

myDrop :: Int -> [a] -> [a]
myDrop a _ | a < 0 = error "Wrong Index"
myDrop _ [] = []
myDrop 0 l = l
myDrop a (_:xs) = myDrop (a - 1) xs

myAppend :: [a] -> [a] -> [a]
myAppend [] l = l
myAppend l [] = l
myAppend (x:xs) m = x : myAppend xs m

myReverseBis :: [a] -> [a] -> [a]
myReverseBis l [] = l
myReverseBis l (x:xs) = myReverseBis (x:l) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse l = myReverseBis [] l

myInit :: [a] -> [a]
myInit [] = error "Empty List"
myInit (_:[]) = []
myInit (x:xs) = x : myInit xs

myLast :: [a] -> a
myLast [] = error "Empty List"
myLast (x:[]) = x
myLast (_:xs) = myLast xs

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

myUnzipBis :: [(a,b)] -> [a]
myUnzipBis [] = []
myUnzipBis ((x,_):ts) = x : myUnzipBis ts

myUnzipBis2 :: [(a,b)] -> [b]
myUnzipBis2 [] = []
myUnzipBis2 ((_,y):ts) = y : myUnzipBis2 ts

myUnzip :: [(a,b)] -> ([a], [b])
myUnzip t = (myUnzipBis t, myUnzipBis2 t)

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap func (x:xs) = func x : myMap func xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter func (x:xs) | ((func x) == True) = (x : myFilter func xs)
                     | otherwise = myFilter func xs

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ a [] = a
myFoldl func f (x:xs) = myFoldl func (func f x) xs