-- Prática 01 de Haskell - Parte 2
-- Nome: Ivan Maidana da Silveira
--1
htmlItem :: String -> String
htmlItem x = "<li>"++ x ++"<lis>"

itemize :: [String] -> [String]
itemize nomes = map htmlItem nomes

--2
isVowel2 :: Char -> Bool
isVowel2 x = elem x "a, A, e, E, i, I, o, O, u, U"

onlyVowels :: String -> String
onlyVowels x = filter isVowel2 x 

--3
isElderly :: Int -> Bool
isElderly idade = idade > 65 

onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x

--4
isLongWord :: String -> Bool 
isLongWord s = length s > 10

onlyLongWords :: [String] -> [String]
onlyLongWords x = filter isLongWord x

--5
ePar :: Int -> Bool
ePar n = mod n 2 == 0

onlyEven :: [Int] -> [Int]
onlyEven list = filter ePar list

--6
between60and80 :: Int -> Bool
between60and80 x = (x >= 60) && (x <= 80) 

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 list = filter between60and80 list 

--7
countSpace :: Char -> Bool
countSpace x = x == ' '

countSpaces :: String -> Int
countSpaces x = length(filter countSpace x)

--8
circleArea :: Float -> Float
circleArea r = r * pi

calcAreas :: [Float] -> [Float]
calcAreas list = map circleArea list

--9
--achaLetra :: Char -> String -> Bool 
--achaLetra c stri = (c == head stri) || achaLetra c (tail stri)

--charFound :: Char -> String -> Bool
--charFound c str = filter achaLetra c str
charFound :: Char -> String -> Bool
charFound char string = length(filter(==char) string)>0

