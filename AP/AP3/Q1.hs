data Time = Egito | Russia | Arabia | Uruguai
            Ira | Marrocos | Portugal | Espanha
            deriving (Show)

type Grupo = (Char, Time, Time, Time, Time)

type Jogo = (Time, Int, Int, Time)

jogos1 :: [Jogo]
jogos1 = [(Egito, 1, 3, Russia), (Arabia, 0, 3, Uruguai), 
(Egito, 0, 0, Arabia),(Russia, 0, 2, Uruguai), 
(Russia, 2, 0, Arabia), (Egito, 0, 2, Uruguai), 
(Ira, 1, 1, Marrocos), (Portugal, 2, 2, Espanha), 
(Ira, 1, 2, Portugal), (Ira, 0, 1, Espanha), 
(Marrocos, 0, 3, Portugal), (Marrocos, 1, 1, Espanha)]

--Classificados são: Os dois com maior número de pontos 
--Em caso de empate usa-se o saldo de gols 
--Se continuar empatado usa-se o número de gols feitos

classificados :: Grupo -> [Jogo] -> (Time, Time)

