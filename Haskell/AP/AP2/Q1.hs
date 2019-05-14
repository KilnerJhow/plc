data Ops = SUM | SUB | MUL
    deriving (Show)

data IntTree = Nilt Int | Node Ops IntTree IntTree
    deriving (Show)

evalTree :: IntTree -> Int

evalTree (Nilt x) = x
evalTree (Node SUM y z) = evalTree y + evalTree z
evalTree (Node SUB y z) = evalTree y - evalTree z
evalTree (Node MUL y z) = evalTree y * evalTree z