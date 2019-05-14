logSetembro = "2016-09-27;19:31:52;Normal;208772;\n2016-09-27;18:12:02;Normal;155759;\n2016-09-26;17:12:02;Normal;155759;\n2016-09-26;16:11:02;Denied;188758;\n2016-09-25;19:12:02;Normal;155759;"

acessosPorUsuario :: String -> [(Int, Int)]

acessosPorUsuario x = filtraUsuario (contaUsuario x)

filtraUsuario :: [Int] -> [(Int, Int)]

filtraUsuario [] = []

filtraUsuario (x:xs) = (x, length (filter (==x) (x:xs))) : filtraUsuario (filter (/= x) xs)

contaUsuario :: String -> [Int]

contaUsuario [] = []
contaUsuario (x:xs) = takeUser (x:xs) : contaUsuario (drop 35 (x:xs))

takeUser :: String -> Int

takeUser (x:xs) = read (drop 27 (take 33 (x:xs))) :: Int
