sumList :: [Int] -> Int --[Int] é uma lista

--caso base
sumList [] = 0 --lista vazia
sumList (a:as) = a + sumList as --(a:b) a é cabeça e b a "cauda" que é uma lista que contém os outros elementos da lista

double :: [Int] -> [Int]

double [] = []
double (x:y) = (2*x : double(y))

member :: [Int] -> Int -> Bool

member [] x = False
member (w:z) x = (w == x) || (member z x)  -- modo 1 mais demorado, pois vê todos os elementos

--modo 2 mais rápido, pois se estiver na cabeça da lista já retorna
-- member (w:z) x | x == a = True
--                | otherwise = member z x


digits :: String -> String

digits [] = []
digits (x:y) | x >= '0' && x <= '9' = (x : digits y)
             | otherwise  = digits y


sumPairs :: [(Int, Int)] -> [Int]

sumPairs [] = []
sumPairs ((x,y):xys) = (x + y) : sumPairs xys 