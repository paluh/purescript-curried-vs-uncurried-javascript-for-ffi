module Main where

import Prelude

import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Console (log)
import Effect.Uncurried (EffectFn1, runEffectFn1)

foreign import runGcdUncurried :: Int -> Int -> Int

foreign import runGcdUncurriedFix :: Fn2 Int Int Int

foreign import runGcd :: Int -> Int -> Int

foreign import runGcdFix :: Int -> Int -> Int

-- | Hand written binding - requires JS implementation and "wrapping"
foreign import alertHandwritten :: String -> Effect Unit

foreign import alertImpl :: EffectFn1 String Unit

alert :: String -> Effect Unit
alert = runEffectFn1 alertImpl

main :: Effect Unit
main = do
  -- | For debugging purposes
  log $ show $ runGcdUncurried 15 20

  -- | Works too :-)
  log $ show $ runFn2 runGcdUncurriedFix 15 20

  log $ show $ runGcd 15 20

  log $ show $ runGcdFix 15 20

  alertHandwritten "handwritten"

  alert "uncurried helpers"

