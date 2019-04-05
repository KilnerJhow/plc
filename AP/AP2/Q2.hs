data Tree t = Nilt | Node t (Tree t) (Tree t)
    deriving (Show)

isBST :: (Ord t) => Tree t -> Bool

isBST (Nilt) = True
isBST (Node chave filhoEsq filhoDir) | (chave) > (key filhoEsq) = isBST filhoEsq
                                     | (chave) < (key filhoDir) = isBST filhoDir
                                     | otherwise = False

key :: (Ord t) => Tree t -> t

key (Nilt) = 
key (Node chave filhoEsq filhoDir) =  chave
