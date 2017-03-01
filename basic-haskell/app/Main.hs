module Main where
main :: IO()
main = return()
-- mytake
-- don't forget to put the type declaration or you will lose points!
--JunWu
mytake = undefined

-- mydrop
-- don't forget to put the type declaration or you will lose points!
mydrop = undefined

-- rev
-- don't forget to put the type declaration or you will lose points!
--JunWu
rev = undefined

-- app
-- don't forget to put the type declaration or you will lose points!
app = undefined

-- inclist
-- don't forget to put the type declaration or you will lose points!
--Chris
inclist :: (Num a) => [a] -> [a]
inclist [] = []
inclist (x:xs) =  [x+1] ++ inclist xs

-- sumlist
-- don't forget to put the type declaration or you will lose points!
--Justin
sumlist :: Num a => [a] -> a
sumlist [] = error "Can't Sum an Empty List"
sumlist[x] = x
sumlist (x:xs) = x + sumlist xs
	
-- myzip
-- don't forget to put the type declaration or you will lose points!
myzip :: [a] -> [b] -> [(a,b)]
myzip [] [] = []
myzip (n) [] = []
myzip [] (n) = []
myzip (x) (y) =
  let
    hx = head x
    hy = head y
    tx = tail x
    ty = tail y
  in 
    [(hx, hy)] ++ myzip tx ty

-- addpairs
-- don't forget to put the type declaration or you will lose points!
-- John
addpairs :: (Num a) => [a] -> [a] -> [a] 
addpairs [] [] = []
addpairs (n) [] = []
addpairs [] (n) = []
addpairs (a) (b) = 
  let
    ha = head a
    hb = head b
    ta = tail a
    tb = tail b
  in
    [(ha + hb)] ++ addpairs ta tb
--IMPLEMENT WITH MYZIP

-- ones
-- don't forget to put the type declaration or you will lose points!
ones = undefined

-- nats
-- don't forget to put the type declaration or you will lose points!
nats = undefined

-- fib
-- don't forget to put the type declaration or you will lose points!
-- John
fib :: Integer -> [Integer]
fib 0 = [0]
fib 1 = [0, 1]
fib n = fib (n-1) : (last (fib(n-1)) + last (fib(n-2)))

-- add
-- don't forget to put the type declaration or you will lose points!
add = undefined

-- union
-- don't forget to put the type declaration or you will lose points!
-- Austin
union :: Ord a => [a] -> [a] -> [a]
union [] [] = []
union (n) [] = (n)
union [] (n) = (n)
union (x) (y) =
  let hx = head x
      hy = head y
      tx = tail x
      ty = tail y
  in 
    if hx == hy
     then [hx] ++ union tx ty
     else if hx > hy
       then [hx] ++ union tx y
       else
         [hy] ++ union x ty

-- intersect
-- don't forget to put the type declaration or you will lose points!
-- Austin
intersect :: Ord a => [a] -> [a] -> [a]
intersect [] [] = []
intersect (n) [] = (n)
intersect [] (n) = (n)
intersect (x) (y) =
  let hx = head x
      hy = head y
      tx = tail x
      ty = tail y
  in 
    if hx == hy
     then intersect tx ty
     else if hx > hy
       then [hx] ++ intersect tx y
       else
         [hy] ++ intersect x ty

-- powerset
-- don't forget to put the type declaration or you will lose points!
powerset = undefined

-- inclist'
-- don't forget to put the type declaration or you will lose points!
-- Chris
inclist' :: (Num a) => [a] -> [a]
inclist' x = map (+1) x

-- sumlist'
-- don't forget to put the type declaration or you will lose points!
-- Justin
sumlist' :: Num a => [a] -> a
sumlist' = foldr (+) 0

data List a = Cons a (List a)
            | Nil
  deriving (Show, Eq)

data Exp = IntExp Integer
         | PlusExp [Exp]
         | MultExp [Exp]
  deriving (Show, Eq)

-- list2cons
-- don't forget to put the type declaration or you will lose points!
list2cons = undefined

-- cons2list
-- don't forget to put the type declaration or you will lose points!
cons2list = undefined

-- eval
-- don't forget to put the type declaration or you will lose points!
eval = undefined

-- list2cons'
-- don't forget to put the type declaration or you will lose points!
list2cons' = undefined

-- BinTree
-- Li

-- sumTree
-- don't forget to put the type declaration or you will lose points!
-- Li
sumTree = undefined

-- SimpVal

-- liftIntOp
-- don't forget to put the type declaration or you will lose points!
liftIntOp = undefined
