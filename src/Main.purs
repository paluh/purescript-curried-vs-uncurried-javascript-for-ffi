module Main where

import Prelude

import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Console (log)

foreign import runGcdUncurried :: Int -> Int -> Int

foreign import runGcdUncurriedFix ∷ Fn2 Int Int Int

foreign import runGcd :: Int -> Int -> Int

foreign import runGcdFix :: Int -> Int -> Int

main :: Effect Unit
main = do
  -- | For debugging purposes
  log $ show $ runGcdUncurried 15 20

  -- | Works too :-)
  log $ show $ runFn2 runGcdUncurriedFix 15 20

  log $ show $ runGcd 15 20

  log $ show $ runGcdFix 15 20


