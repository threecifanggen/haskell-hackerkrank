module EvalExSpec(spec) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception

import EvalEx

spec :: Spec
spec =  do 
  describe "Eval E ^ x" $ do 
    it "when x = 20.0000" $ 
      abs (evalEx 20.0000 - 2423600.1887) < 0.01
    it "when x = 5.0000" $ 
      abs (evalEx 5.0000 - 143.6895) < 0.01
    it "when x = 0.5000" $
      abs (evalEx 0.5000 - 1.6487) < 0.01
    it "when x = -0.5000" $ 
      abs (evalEx (-0.5000) - 0.6065) < 0.01
