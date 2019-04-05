--Funções anonimas

clear' :: Char -> Char
clear' x | x == ';' = ' '
         | otherwise = x

-- Função anônima da função clear'

-- map (\x -> case x of ';' -> )

-- Tipos Algébricos

data Pair = P Int Double


-- como está criando um novo tipo, precisamos dizer ao haskell qual classe derivar
data Tree t = NilT | Node t (Tree t) (Tree t)
    deriving (Show) 


-- Laziness -> Avalia a função apenas quando a expressão é utilizada, ex

potencia :: Integer -> Integer
potencia x = eita
    where am = (a*b) + (a*c) + (a*d)
          a = x * 2
          b = x + 35
          c = x ^ x
          d = x * x
          eita = 4