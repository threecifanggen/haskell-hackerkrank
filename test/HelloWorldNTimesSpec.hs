module HelloWorldNTimesSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception


import HelloWorldNTimes

main :: IO ()
main = hspec $ do
  describe "Hello World N Times" $ do
    it "nHelloWorld" $ do
      nHelloWorld 2 `shouldBe` ["Hello World", "Hello World"]
