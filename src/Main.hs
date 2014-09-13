-- | Main entry point to the application.
module Main where

import UnitTests

lst = [2,3,5,5]

-- 1. Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "No end to empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- 2. Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = error "No second last"
myButLast [x,_] = x
myButLast (_:xs) = myLast xs

-- 3. Find the number of elements of a list.

-- 4. Reverse a list.

-- 5. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x)

-- 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

-- 7. Flatten a nested list structure.

-- 8. Eliminate consecutive duplicates of list elements.

-- 9. Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

-- 10. Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.




total = sum (map (3*) lst)

-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"
    print total
    runTests


