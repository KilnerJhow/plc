logSetembro = "2016-09-27;19:31:52;Normal;208772;\n2016-09-27;18:12:02;Normal;155759;\n2016-09-26;17:12:02;Normal;155759;\n2016-09-26;16:11:02;Denied;188758;\n2016-09-25;19:12:02;Normal;155759;"

acessosPorDia :: String -> [(Int, Int)]

acessosPorDia x = filtraDias (contaDias x)

filtraDias :: [Int] -> [(Int, Int)]

filtraDias [] = []

filtraDias (x:xs) = (x, length (filter (==x) (x:xs))) : filtraDias (filter (/= x) xs)

contaDias :: String -> [Int]

contaDias [] = []
contaDias (x:xs) = takeDia (x:xs) : contaDias (drop 35 (x:xs))

takeDia :: String -> Int

takeDia (x:xs) = read (drop 8 (take 10 (x:xs))) :: Int
