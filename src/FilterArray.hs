module FilterArray (
    f
) where

f :: Int -> [Int] -> [Int]
f n [] = []
f n (x:xs) | x < n = x:(f n xs)
           | x >= n = (f n xs)
