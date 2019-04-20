logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84;25 JAN;Uber;34.24;02 FEV;Spotify;8.50;06 FEV;Uber;6.94;05 MAR;Burger;29.90;10 MAR;Burger;24.99;15 MAR;UCI;19.00;08 ABR;Itunes;3.50;13 ABR;Picpay;20.00;"

split :: String -> Int -> String -- 0: pega até o primeiro espaço ou ponto e vírgula 1: pega o resto depois do primeiro espaço ou ponto e vírgula
split [] _ = []
split (a:as) x | (a == ' ' || a == ';') && x == 0 = ""
               | (a == ' ' || a == ';') && x == 1 = as 
               | x == 0 = a:split as x
               | x == 1 = split as x
               | x == 2 = j
               | x == 3 = k
               | x == 4 = l
               where 
                    j = split (split (a:as) 1) 0 -- mês
                    k = split (split (split (split (a:as) 1) 1) 1) 1 -- restante da fatura retirando o primeiro item
                    l = split (split (split (split (a:as) 1) 1) 1) 0 -- valor

logMes :: String -> String -> Double
logMes [] x = 0
logMes x [] = 0
logMes x y | x == a = (logMes x z) + valor
           | otherwise = logMes x z
            where a = split y 2
                  z = split y 3
                  valor = read (split y 4) :: Double