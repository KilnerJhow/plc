data Time = Egito | Russia | Arabia | Uruguai | Ira | Marrocos | Portugal | Espanha
            deriving (Show, Eq, Ord)


--letra d
type Grupo = (Char, Time, Time, Time, Time)

type Jogo = (Time, Int, Int, Time)



grupoA :: Grupo
grupoA = ('A', Egito, Russia, Arabia, Uruguai)

grupoB :: Grupo
grupoB = ('B', Ira, Marrocos, Portugal, Espanha)

jogos1 :: [Jogo]
jogos1 = [(Egito, 1, 3, Russia), (Arabia, 0, 3, Uruguai), 
          (Egito, 0, 0, Arabia),(Russia, 0, 2, Uruguai), 
          (Russia, 2, 0, Arabia), (Egito, 0, 2, Uruguai), 
          (Ira, 1, 1, Marrocos), (Portugal, 2, 2, Espanha), 
          (Ira, 1, 2, Portugal), (Ira, 0, 1, Espanha), 
          (Marrocos, 0, 3, Portugal), (Marrocos, 1, 1, Espanha)]

--letra a
gols :: Time -> [Jogo] -> Int

gols _ [] = 0

gols x ( (time1, gol1, gol2, time2) : cont) = if time1 == x then gol1 + gols x cont
                                              else if time2 == x then gol2 + gols x cont
                                              else gols x cont

--letra b

saldo :: Time -> [Jogo] -> Int

saldo _ [] = 0

saldo x ( (time1, gol1, gol2, time2) : cont) = if time1 == x then gol1 - gol2 + saldo x cont
                                              else if time2 == x then gol2 - gol1 + saldo x cont
                                              else saldo x cont

--letra c

pontos :: Time -> [Jogo] -> Int

pontos _ [] = 0

pontos x ( (time1, gol1, gol2, time2) : cont) = if ((time1 == x) && (gol1 > gol2)) || ((time2 == x) && (gol2 > gol1)) then 3 + pontos x cont --Vitória do time 1 
                                                else if ((time2 == x) || (time1 == x)) && (gol1 == gol2) then 1 + pontos x cont
                                                else pontos x cont

-- classificados :: Grupo -> [Jogo] -> (Time, Time)

-- classificados grupo x = getTimes (getMax (getPontos grupo x) (getGrupo grupo))

getGrupo :: Grupo -> (Time, Time, Time, Time)

getGrupo (char, t1, t2, t3, t4) = (t1, t2, t3, t4)

getPontos :: Grupo -> [Jogo] -> [(Time, Int)]

getPontos (char, t1, t2, t3, t4) x = [(t1, pontos t1 x), (t2, pontos t2 x), (t3, pontos t3 x), (t4, pontos t4 x)]

getSaldoGols :: Grupo -> [Jogo] -> [(Time, Int)]

getSaldoGols (char, t1, t2, t3, t4) x = [(t1, saldo t1 x), (t2, saldo t2 x), (t3, saldo t3 x), (t4, saldo t4 x)]

-- getMax :: []
                                                         