module AngryProfessor (
    angryProfessor
    ) where

angryProfessor :: Int -> [Int] -> [Char]
angryProfessor k a | (length $ filter (\x -> x <= 0) a) >= k = "NO" | (length $ filter (\x -> x <= 0) a) < k  = "YES"