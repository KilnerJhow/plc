limpaUm :: [Int] -> [Int]

limpaUm [] = []
limpaUm [1] = []
limpaUm (x:xs) =  (read (achaUm (show x)) :: Int) : limpaUm xs

achaUm :: String -> String

achaUm [] = []
achaUm "1" = []
achaUm (x:xs) | x == '1' = achaUm xs
              | otherwise = x : achaUm xs
