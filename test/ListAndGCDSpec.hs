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

  describe "chunksTwoTuple" $ do
    it "when [1, 2, 3, 4]" $ do
      chunksTwoTuple [1, 2, 3, 4] `shouldBe` [(1, 2), (3, 4)]

  describe "maxTuple" $ do
    it "when (1, 2) (3, 4)" $ do
        maxTuple (1, 2) (3, 4) `shouldBe` (3, 4)
    
    it "when (4, 2) (3, 3)" $ do
        maxTuple (4, 2) (3, 3) `shouldBe` (4, 2)
    
    it "when (4, 1) (4, 5)" $ do
        maxTuple (4, 1) (4, 5) `shouldBe` (4, 1)

  describe "maxTupleCheck" $ do
    it "when (1, 2) (3, 4)" $ do
        maxTupleCheck (1, 2) (3, 4) `shouldBe` "right"
    
    it "when (4, 2) (3, 3)" $ do
        maxTupleCheck (4, 2) (3, 3) `shouldBe` "left"
    
    it "when (4, 1) (4, 5)" $ do
        maxTupleCheck (4, 1) (4, 5) `shouldBe` "equal"
  
  describe "checkGCD" $ do
    it "when (2, 3) (5, 1)" $ do
        checkGCD (2, 3) (5, 1) `shouldBe` []
    
    it "when (5, 2) (5, 10)" $ do
        checkGCD (5, 2) (5, 10) `shouldBe` [(5, 2)]

  describe "reduceCheckTwo" $ do
    it "when [(2, 3), (3, 4), (7, 3)] [(2, 1), (5, 1), (7, 4)]" $ do
        reduceCheckTwo [(2, 3), (3, 4), (7, 3)] [(2, 1), (5, 1), (7, 4)] `shouldBe` [(2, 1), (7, 3)]

  describe "listAndGCD" $ do
    it "when [[2, 3, 3, 4, 7, 3], [2, 1, 5, 1, 7, 4]]" $ do
        listAndGCD [[2, 3, 3, 4, 7, 3], [2, 1, 5, 1, 7, 4]] `shouldBe` [(2, 1), (7, 3)]

  describe "stringGCD" $ do
    it "when [(2, 1), (7, 3)]" $ do
      stringGCD [(2, 1), (7, 3)] `shouldBe` "2 1 7 3"
