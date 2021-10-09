module Main where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import qualified EvalExSpec
import qualified ListAndGCDSpec

-- import Fib

-- main :: IO ()
-- main = hspec $ do
--   describe "Fib" $ do
--     it "fib1" $ do
--       fib 5 `shouldBe` 8

--     it "fib2" $ do
--       fib2 5 `shouldBe` 8

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "EvalEx"     EvalExSpec.spec
  describe "ListAndGCD" ListAndGCDSpec.spec
