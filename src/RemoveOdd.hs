module RemoveOdd (f) where

f :: [Int] -> [Int]
f lst = map (\x -> (snd x)) $ 
    filter (\x -> (mod (fst x) 2 == 0)) $ 
    zip [1..] lst