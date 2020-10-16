module CountingValleysSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import CountingValleys


main :: IO ()
main = hspec $ do
  describe "Counting Valleys" $ do
    it "countingValleys" $ do
      countingValleys "UDDDUDUU" `shouldBe` 1
    it "test2" $ do
      countingValleys "UDDDUDUUDDDDDDU" `shouldBe` 2
