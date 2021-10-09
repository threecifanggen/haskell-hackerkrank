module ClimbLeaderBoard where


nextRank :: [(Int, Int)] -> Int -> [(Int, Int)]
nextRank [] a = [(1, a)]
nextRank xs a 
    | snd (last xs) == a = xs ++ [(fst $ last xs, a)] 
    | snd (last xs) /= a = xs ++[(fst (last xs) + 1, a)]
nextRank _ _ = []

denseRankX :: [Int] -> [(Int, Int)]
denseRankX = foldl nextRank []

lastOrOne :: [(Int, Int)] -> Int
lastOrOne [] = 1
lastOrOne xs = fst $ last xs

rankPlayer ::  [Int] -> Int -> Int
rankPlayer ranked p =  lastOrOne $ takeWhile (\i -> p <= snd i) $ denseRankX ranked

climbingLeaderboard :: [Int] -> [Int] -> [Int]
climbingLeaderboard ranked = map (rankPlayer ranked)