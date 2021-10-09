module RemoveOdd (f) where

f :: [Int] -> [Int]
f lst = map snd $ 
    filter (even.fst) $ 
    zip [1..] lst