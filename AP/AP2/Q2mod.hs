data IntTree t = Nilt | Node Int (IntTree t) (IntTree t)
    deriving (Show)


isBST :: IntTree t -> Bool

isBST (Nilt) = True
isBST (Node _ Nilt Nilt) = True
isBST (Node chave filhoEsq filhoDir) | (chave) > (key filhoEsq) && (chave) < (key filhoDir) = isBST filhoEsq && isBST filhoDir
                                     | otherwise = False
                                     
key :: IntTree t -> Int

key (Nilt) = 0
key (Node chave filhoEsq filhoDir) =  chave
    