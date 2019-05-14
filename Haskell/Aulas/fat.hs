fat :: Int -> Int
fat 1 = 1

fat x | x == 0 = fat 1
      | otherwise = fat(x - 1) * x

all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal n m p q = (n == m) && (m == p) && (p == q)


equalCount :: Int -> Int -> Int -> Int