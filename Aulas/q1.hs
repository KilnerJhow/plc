logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84"
-- logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84;25 JAN;Uber;34.24;02 FEV;Spotify;8.50;06 FEV;Uber;6.94;05 MAR;Burger;29.90;10 MAR;Burger;24.99;15 MAR;UCI;19.00;08 ABR;Itunes;3.50;13 ABR;Picpay;20.00;"

-- logMes :: String -> String -> Double

-- logMes [] z = 0
-- logMes x z | searchFatura


searchFatura :: String -> [String] 

searchFatura [] = []
searchFatura (x:xs) | x == ';' = searchFatura xs
                    | otherwise = ([x]:searchFatura xs)