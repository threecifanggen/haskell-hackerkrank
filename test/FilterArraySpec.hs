module FilterArraySpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import FilterArray

main :: IO ()
main = hspec $ do
  describe "Filter Array" $ do
    it "f" $ do
      f 3 [10, 9, 8, 2, 7, 5, 1, 3, 0] `shouldBe` [2, 1, 0]