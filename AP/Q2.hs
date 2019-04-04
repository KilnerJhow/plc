data Tree t = Nilt | Node t (Tree t) (Tree t)
    deriving (Show)

isBST :: Tree t -> Bool

isBST (Nilt) = True
isBST (Node chave filhoEsq filhoDir) | chave > (key filhoEsq) = isBST filhoEsq
                                     | chave < (key filhoDir) = isBST filhoDir
                                     | otherwise = False

key :: Tree t -> t

key (Nilt) = 0
key (Node chave filhoEsq filhoDir) = chave
