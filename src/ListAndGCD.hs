module ListAndGCD
    ( 
        chunksTwo,
        maxTuple,
        maxTupleCheck,
        checkGCD,
        reduceCheckTwo,
        chunksTwoTuple,
        listAndGCD,
        stringGCD
    ) where
import GHC.Read (list)

chunks :: Int -> [a] -> [[a]]
chunks _ [] = []
chunks n xs =
    let (ys, zs) = splitAt n xs
    in  ys : chunks n zs

chunksTwo :: [a] -> [[a]]
chunksTwo = chunks 2

chunksListToTuple :: [[a]] -> [(a, a)]
chunksListToTuple = map (\x -> (head x, x!!1))

chunksTwoTuple :: [a] -> [(a, a)]
chunksTwoTuple = chunksListToTuple. chunksTwo

maxTuple :: (Int, Int) -> (Int, Int) -> (Int, Int)
maxTuple x y 
    | fst x > fst y = x
    | fst x == fst y = (fst x, min (snd x) (snd y))
    | fst x < fst y = y
    | otherwise = (-1, -1)

maxTupleCheck :: (Int, Int) -> (Int, Int) -> String 
maxTupleCheck x y 
    | fst x > fst y = "left"
    | fst x == fst y = "equal"
    | fst x < fst y = "right"
    | otherwise = "other"

checkGCD :: (Int, Int) -> (Int, Int) -> [(Int, Int)]
checkGCD (x1, x2) (y1, y2)
    | x1 == y1 = [(x1, min x2 y2)]
    | otherwise = []

reduceCheckTwo :: [(Int, Int)] -> [(Int, Int)] -> [(Int, Int)]
reduceCheckTwo (xh:xt) (yh:yt) = let res = checkGCD xh yh
    in (
        let maxString = maxTupleCheck xh yh in (
            case maxString of
                "left" -> reduceCheckTwo (xh:xt) yt
                "right" -> reduceCheckTwo xt (yh:yt)
                "equal" -> maxTuple xh yh : reduceCheckTwo xt yt
                _ -> []
        )
    )
reduceCheckTwo _ _ = []

listAndGCD :: [[Int]] -> [(Int, Int)]
listAndGCD (xs:ys) =  foldl (\ x y -> reduceCheckTwo x (chunksTwoTuple y)) (chunksTwoTuple xs) ys
listAndGCD _ = error "Length must be longer than 1"

stringGCDHelper :: [(Int, Int)] -> String
stringGCDHelper (xs:ys) = show (fst xs) ++ " " ++ show (snd xs) ++ " " ++ stringGCD ys
stringGCDHelper _ = ""

stringGCD :: [(Int, Int)] -> String
stringGCD xs = case stringGCDHelper xs of
    "" -> ""
    xxs -> take ((length xxs) - 1) xxs