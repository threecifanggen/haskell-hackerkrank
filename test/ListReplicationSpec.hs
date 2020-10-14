module ListReplicationSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import ListReplication

main :: IO ()
main = hspec $ do
  describe "List Replication" $ do
    it "f" $ do
      f 2 [1, 2] `shouldBe` [1, 1, 2, 2]