import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)") ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 120 120 30 "rgb(95, 12, 31, 04)") ++
  (svgCircle 400 400 89 "rgb(95, 205, 31, 04)") ++
  (svgCircle 00 00 15 "rgb(199, 205, 31, 09)") ++ --direita cima
  (svgCircle 500 500 15 "rgb(199, 205, 31, 09)") ++ --esquerda baixo
  (svgCircle 500 00 15 "rgb(199, 205, 31, 09)") ++ 
  (svgCircle 00 500 15 "rgb(199, 205, 31, 09)") ++
  (svgCircle 200 200 54 "rgb(199, 34, 31, 19)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
