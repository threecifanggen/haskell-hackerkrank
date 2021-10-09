module CountingValleysSpec where

import Test.Hspec ( hspec, describe, it, shouldBe )

import CountingValleys ( countingValleys )


main :: IO ()
main = hspec $ do
  describe "Counting Valleys" $ do
    it "countingValleys" $ do
      countingValleys "UDDDUDUU" `shouldBe` 1
    it "test2" $ do
      countingValleys "UDDDUDUUDDDDDDU" `shouldBe` 2
