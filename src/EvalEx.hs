module EvalEx (
    evalEx,
    fac,
    evalExIterator
) where
    
{-

Eval EX

The series expansion of $e^x$ is given by:

$$
1 + x + x ^ 2 / (2 !) + x ^ 3 / (3 !)
$$

Evaluate  for given values of  by using the above expansion for the first  terms.

Input Format

The first line contains an integer , the number of test cases.
 lines follow. Each line contains a value of  for which you need to output the value of 
     using the above series expansion. These input values have exactly  decimal places each.

Output Format

Output N lines, each containing the value of $e^x$, computed by your program.

Constraints

1. 1 <= N <= 50
2. -20.00 <= x <= 20.00


Var, Val in Scala and def and defn in Clojure are blocked keywords. The challenge is to accomplish
this without either mutable state or direct declaration of local variables.

Sample Input

> 4
> 20.0000
> 5.0000
> 0.5000
> -0.5000

Sample Output

> 2423600.1887
> 143.6895
> 1.6487
> 0.6065
 
Explanation

The output has the computed values of  corresponding to each test case. They are correct up to 
 decimal places and on separate lines.

Scoring

All test cases carry an equal weight in the final score. For your solution to pass a given test case, 
 all the values of $e^x$ computed by you must be within $+/- 0.1$ of the expected answers. 
 This tolerance level has been kept to account for slightly different answers across different languages.
-}

-- Factorial Function

facHelper :: Int -> Int -> Int
facHelper 0 acc = acc
facHelper n acc = facHelper (n - 1) (acc * n)

fac :: Int -> Int
fac n = facHelper n 1


evalExIterator :: Double -> Int -> Double
evalExIterator x 0 = 1.0
evalExIterator x n = x ** fromIntegral n /  fromIntegral (fac n)


evalExHelper :: Double  -> Int -> Double -> Double
evalExHelper x n acc 
    | n == 10 = acc
    | abs(evalExIterator x n) < 0.01 = acc
    | otherwise  = evalExHelper x (n+1) (acc + evalExIterator x n)

evalEx :: Double -> Double
evalEx x = evalExHelper x 0 0.0

