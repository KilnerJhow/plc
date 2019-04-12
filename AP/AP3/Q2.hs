data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show)


data Direction = ToNorth | ToSouth | ToWest | ToEast
                deriving (Eq, Show)


destination :: (Int, Int) -> [Command] -> (Int, Int)

destination x [] = x

destination x (a:as) =  



move :: (Int, Int) -> Int -> Direction -> (Int, Int)

move (y,x) z dir | dir == ToNorth = (y, x + z)
                 | dir == ToSouth = (y, x - z)
                 | dir == ToEast  = (y - z, x)
                 | dir == ToWest  = (y + z, x)

getPosition :: Command -> Direction -> Direction

getPosition x y | x == TurnLeft  = intToPosition (mod ((positionToInt y) + 1) 4)
                | x == TurnRight = intToPosition (mod (abs((positionToInt y) - 1)) 4)


positionToInt :: Direction -> Int

positionToInt ToNorth = 0
positionToInt ToWest = 1
positionToInt ToSouth = 2
positionToInt ToEast = 3

getCommand :: Command -> Int

getCommand (Forward x) = x
getCommand (Backward x) = x

intToPosition :: Int -> Direction

intToPosition 0 = ToNorth
intToPosition 1 = ToWest
intToPosition 2 = ToSouth 
intToPosition 3 = ToEast