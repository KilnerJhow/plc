data Set t = Set [t]
    deriving (Show, Eq)

--Fazer exercício: Comparar conjuntos e dizer se são iguais ou não, sem ordem e sem reptição

instance Eq t => Eq (Set t)
    where 

        (==) (Set x) (Set y) == 