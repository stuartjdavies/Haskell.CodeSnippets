-- Add two numbers together
myAdd :: Int -> Int -> Int
myAdd x y = x + y

-- Subtract two numbers
mySubtract :: Int -> Int -> Int
mySubtract x y = x - y

-- Sum numbers in a list
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

-- Filter not even numbers
myFilterNotEven :: [Int] -> [Int]
myFilterNotEven xs = filter (\x -> ((x `mod` 2) == 0)) xs

-- Get first number
myHead :: [a] -> a
myHead [] = error "No elements in list"
myHead (x:_) = x

-- Get last number
myLast :: [a] -> a
myLast [] = error "No end in a empty list"
myLast [x] = x
myLast (_:xs) = myLast xs
 
-- Multiple all numbers in list
myMultiply :: [Int] -> Int
myMultiply [] = 0
myMultiply [x] = x
myMultiply (x:xs) = x * myMultiply(xs)

-- Reverse the list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) =  myReverse(xs) ++ [x]  

-- Length of the list
myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (_:xs) = 1 + myLength(xs)

-- Get a element_at Cheat 
myElementAt :: [a] -> Int -> a
myElementAt xs i = xs !! i

-- My element using a accumulator
myElementAt' :: [a] -> Int -> a
myElementAt' [] _ = error "No elements in list"
myElementAt' [x] _ = x
myElementAt' (x:xs) _ = x  

-- Join two lists
myJoinLists :: [a] -> [a] -> [a]
myJoinLists (ys) (xs) = ys ++ xs

-- Replace a character in the list 
myReplaceElement :: Eq a => [a] -> a -> [a] 
myReplaceElement [] e = []
myReplaceElement [x] e | e==x = [e]
					   | otherwise = [x]
myReplaceElement (x:xs) e | x==e = [e] ++ myReplaceElement xs e 
						  | otherwise = [x] ++ myReplaceElement xs e
												   
-- Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = error "No second last"
myButLast [x,_] = x
myButLast (_:xs) = myLast xs

-- Reverse a list.
reverseLst :: [a] -> [a]
reverseLst [] = []
reverseLst (x:xs) = reverseLst xs ++ [x]

-- Reverse a list (Second version)
reverseLst' :: [a] -> [a]
reverseLst' list = aux list []
                       where
                           aux [] reversed     = reversed
                           aux (x:xs) reversed = aux xs (x:reversed)

-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x)
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)

-- Flatten a nested list structure.
data NestedList a = Elem a | List [NestedList a]

myFlatten4 = reverse . rec []
  where
  rec acc (List []) = acc
  rec acc (Elem x)  = x:acc
  rec acc (List (x:xs)) = rec (rec acc x) (List xs)

-- Eliminate consecutive duplicates of list elements.

-- Pack consecutive duplicates of list elements into sub lists. If a list contains repeated elements they should be placed in separate sublists.

-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

-- Decode a run-length encoded list. 

-- Run-length encoding of a list (direct solution).

-- Duplicate the elements of a list. 
myDuplicate :: [a] -> [a]
myDuplicate [] = []
myDuplicate (x:xs) = x:x:myDuplicate(xs)

-- Replicate the elements of a list a given number of times. 
myReplicate :: [a] -> Int -> [a]
myReplicate [] _ = []
myReplicate (x:xs) n = [ x | i <- [1..n]] ++ myReplicate xs n 

-- Drop every Nth element from a list. 
myDrop :: [a] -> Int -> [a]
myDrop xs n = myDrop' xs n
    where myDrop' [] _ = []
          myDrop' (x:xs) 1 = myDrop' xs n
          myDrop' (x:xs) k = x : myDrop' xs (k-1)
		  
-- Split a list into two parts; the length of the first part is given. 

-- Extract a slice from a list. 

-- Rotate a list N places to the left. 

-- Remove the Kth element from a list. 
	
-- Insert an element at a given position into a list. 

-- Create a list containing all integers within a given range. 

-- Extract a given number of randomly selected elements from a list. (

-- Lotto: Draw N different random numbers from the set 1..M.

-- Generate a random permutation of the elements of a list. 

-- Generate the combinations of K distinct objects chosen from the N

-- Group the elements of a set into disjoint subsets.

-- Sorting a list of lists according to length of sublists. 

-- *******************************************************************************
-- 
-- Arithmetic puzzles
-- 
-- *******************************************************************************

-- Determine whether a given integer number is prime.

-- Determine the greatest common divisor of two positive integer numbers. 
myGcd :: Int -> Int -> Int
myGcd x y = if (y == 0) then 
			  y
			else
			  myGcd y (x `mod` y)

-- Determine whether two positive integer numbers are coprime. 
-- Two numbers are coprime if their greatest common divisor equals 1.
myCoprime :: Int -> Int -> Bool
myCoprime x y = (myGcd x y) == 1

-- Calculate Euler's totient function 

-- Determine the prime factors of a given positive integer. 

-- Determine the prime factors of a given positive integer (2)

-- Calculate Euler's totient function 

-- Compare the two methods of calculating Euler's totient function. 

-- A list of prime numbers. 

-- Goldbach's conjecture. 

-- ********************************************************************************
-- 
-- Logic and Codes
--
-- ********************************************************************************

-- Truth tables for logical expressions (2 variables).

-- Truth tables for logical expressions. 







