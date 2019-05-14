data Expr = Lit Int | Add Expr Expr | Sub Expr Expr
    deriving (Show)

    --Usar parenteses para exibir
eval :: Expr -> Int

eval (Lit n) = n
eval (Add x y) = eval x + eval y
eval (Sub x y) = eval x - eval y

showExpr :: Expr -> String
showExpr (Lit n) = show n
showExpr (Add x y) = showExpr x ++ " + " ++ showExpr y
showExpr (Sub x y) = showExpr x ++ " - " ++ showExpr y

data List t = Nil | Cons t (List t)
    deriving (Show)

data Tree t = NilT | Node t (Tree t) (Tree t)
    deriving (Show)

toList :: List t -> [t]
toList Nil = []
toList (Cons a as) = (a:toList as)

fromList :: [t] -> List t
fromList [] = Nil
fromList (a:as) = (Cons a (fromList as))

maior :: Int -> Int -> Int 
maior a b | a > b = a
          | otherwise = b

depth :: Tree t -> Int
depth NilT = 0

