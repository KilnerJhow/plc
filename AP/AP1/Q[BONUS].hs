

--Opcode, Conta Origem, Conta destino, Valor
--0 : Crédito de valor em Conta Origem
--1 : Débito de valor em Conta Origem
--2 : Transferência de valor da conta Origem para conta Destino

processBankOperations :: [Double] -> [(Int, Int, Int, Double)] -> [Double]

processBankOperations x [] = x

processBankOperations x ((0, co, cd, val) : ops) =  processBankOperations (replace x co ( (x!!co) + val)) ops

-- processBankOperations (a:as) [(1, co, cd, val) : ops] = 

-- processBankOperations (a:as) [(2, co, cd, val) : ops] = 



replace :: [Double] -> Int -> Double -> [Double]
replace (a:as) 0 rp = (rp:as)
replace (a:as) n rp = a:(replace as (n-1) rp)