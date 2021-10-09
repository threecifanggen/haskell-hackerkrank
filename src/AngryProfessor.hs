module AngryProfessor (
    angryProfessor
    ) where

angryProfessor :: Int -> [Int] -> [Char]
angryProfessor k a 
    | length (filter (<= 0) a) >= k = "NO" 
    | length (filter (<= 0) a) < k  = "YES"
angryProfessor _ _ = "YES"