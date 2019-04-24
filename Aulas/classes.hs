data Distancia = Km Float | Milhas Float
    deriving (Show)

printDist :: Distancia -> String

printDist (Km x) = show x ++ "Km"
printDist (Milhas x) = show x ++ "Milhas"

instance Eq Distancia where
    (==) (Km x) (Km y) = (x == y)
    (==) (Milhas x) (Milhas y) = (x == y)
    (==) (Milhas x) (Km y) = x == 1.6*y
    (==) (Km x) (Milhas y) = (Milhas x) == (Km y)
