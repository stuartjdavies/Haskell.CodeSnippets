module ListTests where

import Test.HUnit
import Lists

testQ1OneElement = TestCase $ assertEqual 
  "Q1: From a list of 1 element only one element should be returned"
  1 (myLast [1]) 

testQ1ManyElements = TestCase $ assertEqual 
  "Q2: Return the last element from a list of 4 elements"
  4 (myLast [1,2,3,4]) 

testQ1NoElements = TestCase $ assertEqual
  "Q3: Should return a error message"
   12 (myLast [12]) 

runListTests = 
   runTestTT $ TestList [testQ1OneElement, testQ1ManyElements, testQ1NoElements]
  