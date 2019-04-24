addEspOnStr :: String -> Int -> String

addEspOnStr [] _ = []
addEspOnStr (x:[]) _ = (x:[])

addEspOnStr (x:xs) y = [x] ++ espQnt y ++ addEspOnStr xs y

espQnt :: Int -> String

espQnt 0 = ""
espQnt x = " " ++ espQnt (x-1)