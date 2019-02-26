maxi :: Int -> Int -> Int
maxi n m | n >= m = n
          | otherwise = m

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

maxVendas :: Int -> Int
maxVendas 0 = vendas 0
maxVendas p = maxi (maxVendas(p-1)) (vendas p)

vendasNulas :: Int -> Bool

vendasNulas n = (vendas n == 0) -- ?

addSpace :: Int -> String

addSpace 0 = ""
addSpace n = "." ++ addSpace(n-1)

paraDireita :: Int -> String -> String

paraDireita 0 m = m
paraDireita n m = "." ++ (paraDireita (n - 1) m)

-- imprimeTabela :: Int -> IO

-- imprimeTabela n = putStr(cabecalho ++ imprimeSemanas n ++ imprimeTotal n ++ imprimeMedia n)

cabecalho :: Int -> IO
cabecalho n = show n