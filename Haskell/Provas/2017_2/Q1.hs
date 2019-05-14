
locate :: Eq t => t -> [t] -> Int

locate x y = locate' x y y

locate' :: Eq t => t -> [t] -> [t] -> Int

locate' _ [] x = - (1 + length x)

locate' x (y:ys) z = if x == y then 0 else 1 + locate' x ys z
