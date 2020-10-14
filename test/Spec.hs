module Main where

import Test.Hspec
import Test.QuickCheck
import Control.Exception


import Fib

main :: IO ()
main = hspec $ do
  describe "Fib" $ do
    it "fib1" $ do
      fib 5 `shouldBe` 8

    it "fib2" $ do
      fib2 5 `shouldBe` 8
