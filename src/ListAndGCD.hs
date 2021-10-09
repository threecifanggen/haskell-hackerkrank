module ListAndGCD
    ( 
        chunksTwo,
        maxTuple,
        maxTupleCheck,
        checkGCD,
        reduceCheckTwo
    ) where
import GHC.Read (list)
import System.Posix.Internals (newFilePath)

chunks :: Int -> [a] -> [[a]]
chunks _ [] = []
chunks n xs =
    let (ys, zs) = splitAt n xs
    in  ys : chunks n zs

chunksTwo :: [a] -> [[a]]
chunksTwo = chunks 2

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
    | fst y < fst x = "right"
    | otherwise = "other"

checkGCD :: (Int, Int) -> (Int, Int) -> [(Int, Int)]
checkGCD (x1, x2) (y1, y2)
    | x1 == x2 = [(x1, min x2 y2)]
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

