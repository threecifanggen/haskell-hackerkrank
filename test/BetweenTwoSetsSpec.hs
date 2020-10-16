module BetweenTwoSetsSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception


import BetweenTwoSets

main :: IO ()
main = hspec $ do
  describe "get Between two sets length" $ do
    it "getTotalX" $ do
      getTotalX [2, 4] [16, 32, 96] `shouldBe` 3
