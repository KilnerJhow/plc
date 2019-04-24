

--Opcode, Conta Origem, Conta destino, Valor
--0 : Crédito de valor em Conta Origem
--1 : Débito de valor em Conta Origem
--2 : Transferência de valor da conta Origem para conta Destino

processBankOperations :: [Double] -> [(Int, Int, Int, Double)] -> [Double]

processBankOperations x [] = x

processBankOperations x ((0, co, cd, val) : ops) =  processBankOperations (replace x co ( (x !! co) + val)) ops

processBankOperations x ((1, co, cd, val) : ops) = processBankOperations a ops
                                                    where 
                                                        a = if ((x !! co) - val) >= 0
                                                            then replace x co ( (x !! co) - val)
                                                            else x

processBankOperations x ((2, co, cd, val) : ops) = processBankOperations a ops
                                                    where 
                                                        a = if ( (x !! co) - val) >= 0 
                                                            then replace w cd ( (w !! cd) + val) 
                                                            else x
                                                        w = replace x co ( (x !! co) - val)


--Substitui o n-ésimo termo de uma lista
replace :: [Double] -> Int -> Double -> [Double]
replace (a:as) 0 rp = (rp:as)
replace (a:as) n rp = a:(replace as (n-1) rp)