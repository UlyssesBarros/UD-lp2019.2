-- Crie uma função inverterTexto que receba como parâmetro um texto 
-- e retorne este texto com a ordem das palavras invertidas. 
-- Ex.: inverterTexto ‘lá vou eu’ = ‘eu vou lá’
import Data.List.Split

rev :: [a] -> [a]
rev xs = reverse xs

main = do

    putStrLn "Digite uma frase que será invertida"
    n <- getLine
    let list = (splitOn " " n)
    print (rev list)
