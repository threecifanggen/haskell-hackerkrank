module HelloWorldNTimes (
    nHelloWorld
) where


nHelloWorld :: Int -> [[Char]]
nHelloWorld 0 = []
nHelloWorld n = map (const "Hello World") [1..n]


main :: IO()
main = do
    n <- readLn :: IO Int
    mapM_ putStrLn (nHelloWorld n)