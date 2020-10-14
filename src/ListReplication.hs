module ListReplication (
    f
) where

f :: Int -> [Int] -> [Int]
f n arr = concat $
    map (\x -> map (\y -> x) [1..n]) arr