bSort' :: Ord t => [t] -> [t]

bSort' [] = []
bSort' (x:[]) = (x:[])
bSort' (x:xs) | x > head xs = bSort' (replace x xs) 
             | otherwise = (x:bSort' xs)

bSort :: Ord t => [t] -> [t]

bSort [] = []
bSort (x:[]) = (x:[])
bSort x | isSorted x = x  
        | otherwise = bSort (bSort' x)

isSorted :: Ord t => [t] -> Bool

isSorted [] = True
isSorted (x:[]) = True
isSorted (x:xs) | x > head xs = False
                | otherwise = isSorted xs
                
replace :: t -> [t] -> [t]

replace x (y:ys) =  (y:x:ys)

