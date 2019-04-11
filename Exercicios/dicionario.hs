type Dicionario = [(Int, String)]

meuDicionario :: Dicionario
meuDicionario = [(1, "casa"), (3, "cafe"), (4, "teria"), (6, "era"), (7, "uma")]

teste = "a 1 tinha 3 mas nao 6 7 34, a 1 6 7 sorve4"
teste1 = "34"

decode :: Dicionario -> String -> String

decode _ []  = []
decode x (a : as) | [a] >= "0" && [a] <= "9" = (buscaDicionario x (read [a]:: Int)) ++ decode x as 
                  | otherwise = [a] ++ (decode x as)


-- decode _ []  = []
-- decode x (a : as) | [a] >= "0" && [a] <= "9" = [a] ++ " " ++ decode x as
--                   | otherwise = [a] ++ (decode x as)


buscaDicionario :: Dicionario-> Int -> String

--poderia ser usado também como : ((n,s):ns) que representa a tupla
buscaDicionario [] _ = ""
buscaDicionario x a | fst (head x) == a = snd (head x)
                    | otherwise = buscaDicionario (tail x) a
