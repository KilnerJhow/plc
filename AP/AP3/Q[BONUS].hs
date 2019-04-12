data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show)


data Direction = ToNorth | ToSouth | ToWest | ToEast
                deriving (Eq, Show)


faces :: Direction -> [Command] -> Direction

faces x [] = x

faces x (a:as) | a == TurnLeft || a == TurnRight = faces (getPosition a x) as
               | otherwise = faces x as 

getPosition :: Command -> Direction -> Direction

getPosition x y | x == TurnLeft  = intToPosition (mod ((positionToInt y) + 1) 4)
                | x == TurnRight = intToPosition (mod (abs((positionToInt y) - 1)) 4)

positionToInt :: Direction -> Int

positionToInt ToNorth = 0
positionToInt ToWest = 1
positionToInt ToSouth = 2
positionToInt ToEast = 3

intToPosition :: Int -> Direction

intToPosition 0 = ToNorth
intToPosition 1 = ToWest
intToPosition 2 = ToSouth 
intToPosition 3 = ToEast