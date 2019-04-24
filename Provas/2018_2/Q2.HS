
decode_rle :: String -> String

decode_rle [] = []

decode_rle (x:y:xs) = (repeatChar y (charToInt x)) ++ decode_rle (drop 2 xs)

charToInt :: Char -> Int
charToInt ch = fromEnum ch - fromEnum '0'

repeatChar :: Char -> Int -> String

repeatChar x y = if y > 0 then [x] ++ (repeatChar x (y-1)) else ""