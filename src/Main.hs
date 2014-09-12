-- | Main entry point to the application.
module Main where

lst = [2,3,5,5]

-- Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "No end to empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = error "No second last"
myButLast [x,_] = x
myButLast (_:xs) = myLast xs


total = sum (map (3*) lst)

-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"

    print total



