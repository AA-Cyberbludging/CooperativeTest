--徐祥_2021141461106
task1 :: [Int] -> Int -> Int
task1 [] _ = 0
task1 (x:xs) i
  | x > i = 1 + task1 xs i
  | otherwise = task1 xs i

task2 :: [Maybe String] -> [Maybe String] -> String
task2 list1 list2 =
  let firstString = concatMap getString list1
      secondString = concatMap getString list2
      uniqueChars = getUniqueChars firstString secondString
      greaterChars = filter (isGreater secondString) uniqueChars
  in sortString greaterChars

getString :: Maybe String -> String
getString (Just str) = str
getString Nothing = ""

getUniqueChars :: String -> String -> String
getUniqueChars [] _ = []
getUniqueChars (x:xs) ys
  | elem x ys = getUniqueChars xs ys
  | otherwise = x : getUniqueChars xs ys

isGreater :: String -> Char -> Bool
isGreater [] _ = True
isGreater (y:ys) x
  | x > y = isGreater ys x
  | otherwise = False

sortString :: String -> String
sortString str = insertionSort str []

insertionSort :: String -> String -> String
insertionSort [] sorted = sorted
insertionSort (x:xs) sorted = insertionSort xs (insert x sorted)

insert :: Char -> String -> String
insert x [] = [x]
insert x (y:ys)
  | x <= y = x : y : ys
  | otherwise = y : insert x ys

class IntDistCalculable a where
  integerDist :: a -> a -> Integer

instance IntDistCalculable Bool where
  integerDist True True = 0
  integerDist False False = 0
  integerDist _ _ = 1

instance IntDistCalculable Integer where
  integerDist x y = abs (x - y)

instance IntDistCalculable Double where
  integerDist x y = round (abs (x - y))

instance IntDistCalculable a => IntDistCalculable (Maybe a) where
  integerDist (Just x) (Just y) = integerDist x y
  integerDist _ _ = 0
