data Tree t = Node t (Tree t) (Tree t) | Leaf t
                deriving (Show)

testeOrdenado :: Tree Int

testeOrdenado = Node 10 (Node 5 (Leaf 3) (Leaf 6)) (Node 15 (Leaf 14) (Leaf 17))

testeNaoOrdenado :: Tree Int

testeNaoOrdenado = Node 10 (Node 5 (Leaf 3) (Leaf 6)) (Node 15 (Leaf 16) (Leaf 17))
-- isSortedTree testeOrdenado ----> True
-- isSortedTree testeNaoOrdenado ----> False

isSortedTree :: Ord t => Tree t -> Bool

isSortedTree (Leaf x) = True
isSortedTree (Node valor filhoEsq filhoDir) | valor >= getKey (filhoEsq) && valor <= getKey(filhoDir) = (isSortedTree filhoDir) && (isSortedTree filhoEsq)
                                            | otherwise = False


getKey :: Tree t -> t

getKey (Leaf x) = x
getKey (Node x _ _) = x