module PlusMinusSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import PlusMinus

main :: IO ()
main = hspec $ do
  describe "PlusMinus" $ do
    it "test1" $ do
      plusMinus [-4, 3, -9, 0, 4, 1] `shouldBe` ["0.500000", "0.333333", "0.166667"]
