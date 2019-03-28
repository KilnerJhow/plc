data Shape = Circle Float
           | Rectangle Float Float
           | Square Float

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _ ) = False
isRound (Square _) = False


area :: Shape -> Float
area (Circle x) = pi * x * x
area (Rectangle x y) = x * y 
area (Square x) = x * x 