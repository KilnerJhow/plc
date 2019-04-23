substr :: String -> String -> Bool

substr [] _ = True
substr _ [] = False

substr x y = substr' x x y

substr' :: String -> String -> String -> Bool

substr' _ _ [] = False
substr' _ [] _ = True 

substr' z (x:xs) (y:ys) = if x == y 
                         then substr' z xs ys
                         else substr' z z ys