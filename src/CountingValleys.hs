module CountingValleys (
    countingValleys
) where

convertBool :: Bool -> Int
convertBool b | b == True = 1 | b == False = -1

stepToNext :: (Int, Int) -> Char -> (Int, Int)
stepToNext x y = ((fst x) + convertBool (y == 'U'), (snd x) + fromEnum ((fst x == 0) && (y == 'D')))

countingValleys :: [Char] -> Int
countingValleys path = snd $ foldl stepToNext (0, 0) path