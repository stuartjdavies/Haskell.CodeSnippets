module UnitTests where

import Test.HUnit
import Lists

check p = do
  assert p
  putStrLn "OK"

runTests =
    check (myLast [1] == 1)
  