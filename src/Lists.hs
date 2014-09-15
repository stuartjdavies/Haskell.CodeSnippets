module Lists where

-- 1. Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "No end to empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- 2. Element At
elementAt :: [a] -> Int -> a
elementAt list i    = list !! (i-1)

-- 3. Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = error "No second last"
myButLast [x,_] = x
myButLast (_:xs) = myLast xs

-- 4. Find the number of elements of a list.
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- (using a accumulator)
myLength2 :: [a] -> Int
myLength2 list = myLength_acc list 0
	   where
                myLength_acc [] n = n
		myLength_acc (_:xs) n = myLength_acc xs (n + 1)

-- 5. Reverse a list.
reverseLst :: [a] -> [a]
reverseLst [] = []
reverseLst (x:xs) = reverseLst xs ++ [x]

reverseLst' :: [a] -> [a]
reverseLst' list = aux list []
                       where
                           aux [] reversed     = reversed
                           aux (x:xs) reversed = aux xs (x:reversed)

-- 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x)
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)

-- 7. Flatten a nested list structure.

-- 8. Eliminate consecutive duplicates of list elements.

-- 9. Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

-- 10. Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

testQ1 :: () -> Bool
testQ1 () = 
        (myLast [1] == 1) &&
        (myLast [1,2,3,4] == 1)
        
        


