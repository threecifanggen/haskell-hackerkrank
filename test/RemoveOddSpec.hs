module RemoveOddSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import RemoveOdd

main :: IO ()
main = hspec $ do
  describe "Remove Odd index value" $ do
    it "f" $ do
      f [3, 4, 3, 2, 42, 3] `shouldBe` [4, 2, 3]