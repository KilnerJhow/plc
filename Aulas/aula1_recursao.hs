vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 20
vendas 2 = 50
vendas 3 = 30
vendas 4 = 89
vendas 5 = 20
vendas n = 0

totalVendas :: Int -> Int
totalVendas x | x == 0 = vendas 0
              | otherwise = totalVendas(x-1) + vendas x
