square :: Int -> Int
square x = x*x

allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

maxi :: Int -> Int -> Int
maxi n m    | n >= m   = n
            | otherwise = m

fat :: Int -> Int

calculoFat :: Int -> Int
calculoFat n | n == 0 = fat 1
             | otherwise = calculoFat(n-1) * n