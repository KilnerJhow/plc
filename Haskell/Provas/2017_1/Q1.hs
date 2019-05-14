isSorted :: Ord t => [t] -> Bool

isSorted [] = True
isSorted (x:[]) = True
isSorted (x:xs) = if x >= head (xs) then False else isSorted xs