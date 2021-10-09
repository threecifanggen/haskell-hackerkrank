module ListAndGCDSpec(spec) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import ListAndGCD

spec :: Spec
spec =  do 
  describe "chunksTwo" $ do 
    it "when [1, 2, 3, 4]" $ do
      chunksTwo [1, 2, 3, 4] `shouldBe` [[1, 2], [3, 4]]


  describe "maxTuple" $ do
    it "when (1, 2) (3, 4)" $ do
        maxTuple (1, 2) (3, 4) `shouldBe` (3, 4)
    
    it "when (4, 2) (3, 3)" $ do
        maxTuple (4, 2) (3, 3) `shouldBe` (4, 2)
    
    it "when (4, 1) (4, 5)" $ do
        maxTuple (4, 1) (4, 5) `shouldBe` (4, 1)
