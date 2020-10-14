module Fib (
    fib,
    fib2
) where

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)


fib2helper :: Int -> Int -> Int -> Int
fib2helper 0 _ x0 = x0 
fib2helper n x1 x0 = fib2helper (n-1) (x1+x0) (x1)

fib2 :: Int -> Int
fib2 n = fib2helper n 1 1