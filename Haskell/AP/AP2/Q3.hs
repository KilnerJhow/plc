data List t = Nil | Cons t (List t)
    deriving (Show)

mapList :: (t -> t) -> List t -> List t

mapList _ (Nil) = (Nil)
mapList x (Cons y z) = (Cons (x y) (mapList x z))