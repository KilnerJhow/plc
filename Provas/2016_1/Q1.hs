logSetembro = "2016-09-27;19:31:52;Normal;208772;\n2016-09-27;18:12:02;Normal;155759;\n2016-09-26;17:12:02;Normal;155759;\n2016-09-26;16:11:02;Denied;188758;\n2016-09-25;19:12:02;Normal;155759;"

tiposDeAcesso :: String -> (Int, Int)

tiposDeAcesso [] = (0,0)

tiposDeAcesso x = (countOK x, countDenied x)

countDenied :: String -> Int

countDenied [] = 0
countDenied (x:xs) | take 6 (x:xs) == "Denied" = 1 + countDenied xs
                   | otherwise = countDenied xs

countOK :: String -> Int

countOK [] = 0
countOK (x:xs) | take 6 (x:xs) == "Normal" = 1 + countOK xs
               | otherwise = countOK xs

-- tiposDeAcesso :: String -> (Int, Int) 
-- tiposDeAcesso str = (length (filter (=='N') str), length (filter (== 'D') str))







