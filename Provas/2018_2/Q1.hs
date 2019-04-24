
encode_rle :: String -> String

encode_rle [] = []

encode_rle (a:as) = show (x) ++ [a] ++ encode_rle (drop x (a:as)) 
                    where 
                        x = searchOcc (a:as) a

searchOcc :: String -> Char -> Int

searchOcc [] _ = 0
searchOcc (a:as) x = if(a == x) then 1 + searchOcc as x else 0