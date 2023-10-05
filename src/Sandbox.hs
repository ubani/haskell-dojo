module Sandbox where
import GHC.IO.Handle (BufferMode(BlockBuffering))

hello :: String
hello = "Hello, World"


data Fullname = Fullname String String
spj :: Fullname
spj = Fullname "Peter" "Parker"

type PName = String
type PId = Int
-- type Pokemon = (PName, PId)

-- pikachu :: Pokemon
-- pikachu = ("Pikachu" , 25)



data Pokemon = Bulbasar | Charmander | Squirtle | Pikachu

-- p :: Pokemon
-- p = Misty

data Trainer = Ash | Misty | Brock  -- call :type Misty
data Color = Red | Green | Blue


x :: Float
x = 2.3

y :: Int
y = 7

getStarterPokemon :: String -> String   -- call getStarterPokemon "fire"
getStarterPokemon t = 
    if t == "fire"
        then "Charmander"
    else if t == "water"
        then "Squirtle"
        else if t == "grass"
        then "Bulbasaur"
        else "Pikachu"

getStarterPokemon_Guards :: String -> String   -- call getStarterPokemon "fire"
getStarterPokemon_Guards t
  | t == "fire"  = "Charmandaner"
  | t == "water" = "Squirtle" 
  | t == "grass" = "Bulbasaur" 
  | otherwise    = "Pokemon"                    -- otherwise is a replacement for True

getStarterPokemon_Case :: String -> String   -- call getStarterPokemon "fire"
getStarterPokemon_Case t = case t of
    "fire" -> "Charmander"
    "water" -> "Squirtle"
    "grass" -> "Bulbasaur"
    _      -> "Pikachu"

getStarterPokemon_Pat "fire"  = "Charmander"
getStarterPokemon_Pat "water" = "Squirtle"
getStarterPokemon_Pat "grass" = "Bulbasaur"
getStarterPokemon_Pat _       = "Pikachu"