-- Prática 01 de Haskell - Parte 1
-- Nome: Ivan Maidana da Silveira

sumSquares :: Int -> Int -> Int
sumSquares x y = (x^2) + (y^2)

circleArea :: Float -> Float
circleArea r = r * pi 

age :: Int -> Int -> Int
age ano_nasc ano_atual = ano_atual - ano_nasc

isElderly :: Int -> Bool
isElderly idade = idade > 65 

htmlItem :: String -> String
htmlItem x = "<li>"++ x ++"<lis>" 

startsWithA :: String -> Bool
startsWithA x = (head x) == 'A'

isVerb :: String -> Bool
isVerb y = (last y) == 'r'

isVowel :: Char -> Bool
isVowel x = elem x "a,e,i,o,u"

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = (head x) == (head y)

isVowel2 :: Char -> Bool
isVowel2 x = elem x "a, A, e, E, i, I, o, O, u, U"