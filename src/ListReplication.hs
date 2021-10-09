module ListReplication (
    f
) where

f :: Int -> [Int] -> [Int]
f n = concatMap (\x -> map (const x) [1..n])