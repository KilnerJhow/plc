quantidade :: Int -> Int -> Int

quantidade 0 0 = 1
quantidade x y | x > 0 = ( contaNum (show x) (show y) ) + quantidade (x - 1) y
               | otherwise = 0


contaNum :: String -> String  -> Int

contaNum [] _ = 0

-- 1 numero para procurar
contaNum (x:xs) (y:[]) | x == y = 1 + contaNum xs (y:[])
                       | otherwise = contaNum xs (y:[])

-- + 1 de numero para procurar
contaNum (x:xs) y | take (length y) (x:xs) == y = 1 + contaNum xs y
                  | otherwise = contaNum xs y
