module HelloWorldNTimes (
    nHelloWorld
) where

import Control.Monad
import Data.Bits
import Data.List
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe


nHelloWorld :: Int -> [[Char]]
nHelloWorld 0 = []
nHelloWorld n = map (\x -> "Hello World") [1..n]



main :: IO()
main = do
    n <- readLn :: IO Int
    mapM_ putStrLn (nHelloWorld n)