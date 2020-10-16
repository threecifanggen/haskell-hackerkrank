module AngryProfessorSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import AngryProfessor

main :: IO ()
main = hspec $ do
  describe "AngryProfessor" $ do
    it "test1" $ do
      angryProfessor 3 [-1, -3, 4, 2] `shouldBe` "YES"
    it "test2" $ do
      angryProfessor 2 [0, -1, 2, 1] `shouldBe` "NO"
