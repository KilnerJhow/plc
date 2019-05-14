type Dia = String
type Hora = String
type Usuario = String

data LogEntry = Permitido Dia Hora Usuario | Negado Dia Hora Usuario deriving (Show)

logSetembro = "2016-09-27;19:31:52;Normal;208772;\n2016-09-27;18:12:02;Normal;155759;\n2016-09-26;17:12:02;Normal;155759;\n2016-09-26;16:11:02;Denied;188758;\n2016-09-25;19:12:02;Normal;155759;"

converte :: String -> [LogEntry]

converte [] = []

converte x = (save (takeData x) (takeHora x) (takeUser x) (takePermission x)) : converte (drop 35 x)

save :: String -> String -> String -> Bool -> LogEntry

save data_ hora user True = Permitido data_ hora user
save data_ hora user False = Permitido data_ hora user
-- save x False = Negado (takeData x) (takeHora x) (takeUser x)

takePermission :: String -> Bool

takePermission x | take 6 (drop 20 x) == "Normal" = True
                 | otherwise = False

takeUser :: String -> String

takeUser (x:xs) = drop 27 (take 33 (x:xs) )

takeData :: String -> String

takeData (x:xs) = take 10 (x:xs) 

takeHora :: String -> String

takeHora (x:xs) = take 8 (drop 11 (x:xs))