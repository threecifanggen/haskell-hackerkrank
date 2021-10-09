module ClimbLeaderBoardSpec where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import ClimbLeaderBoard

main :: IO ()
main = hspec $ do
  describe "Rank Palyers" $ do
    it "test1" $ do
      climbingLeaderboard [100, 100, 50, 40, 40, 20, 10] [5, 25, 50, 120] `shouldBe` [6, 4, 2, 1]