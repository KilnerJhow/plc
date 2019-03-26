f :: Int -> Int -> Int
f x y = x*x + y*y

--Expressao lambda
f' = \x -> (\y -> x*x + y*y) --Recebe o primeiro parametro em \x e o segundo em \y e retorna x*x + y*y


--Funcao composta
--(f.g) = aplica g depois f

soma10 = \x -> x + 10

square = \x -> x*x

-- :type (nome funcao) mostra o tipo da funcao