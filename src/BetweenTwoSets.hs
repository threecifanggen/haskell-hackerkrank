module BetweenTwoSets (
    getTotalX
) where


getTotalX:: [Int] -> [Int] -> Int
getTotalX a b = length [x | x <-[maximum a..minimum b], 
    (all (\i -> (x `mod` i == 0)) a) && (all (\i -> (i `mod` x  == 0)) b)]
    -- Write your code here