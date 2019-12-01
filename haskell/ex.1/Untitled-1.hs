import Data.List (splitAt)
import Data.List.Split
import Data.List (sort)
import Data.Tuple.Select

f :: [String] -> [Int]
f = map read

fibn :: Int -> Int
fibn 0 = 0
fibn 1 = 1
fibn n = fibn (n-1) + fibn (n-2)

fatorial :: (Integral a) => a -> a  
fatorial 0 = 1  
fatorial n = n * fatorial (n - 1) 

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

getimp :: [Int] -> [Int]
getimp xs = filter odd xs

getpar :: [Int] -> [Int]
getpar xs = filter even xs


main = do
    -- Ex Enésiomo número Fibonacci
    putStrLn "Digite um número inteiro não negativo"
    n <- getLine    
    let x = (read n :: Int)
    if x < 0
        then putStrLn "Número negativo não pode"
    else putStr "O enésimo número da sequência é: "; print (fibn x) 
    -- Ex Fatorial
    putStrLn "Vamos calcular o fatorial de um número, por favor digite um número: "
    m <- getLine    
    let x = (read m :: Int)
    putStr "O fatorial é: "; print (fatorial x) 
    -- Ex FiboList
    putStrLn "Digite um número para retornarmos uma fiblist"
    m <- getLine    
    let x = (read m :: Int)
    if x < 0
        then putStrLn "Número negativo não pode"
    else 
        do            
            let fiblist = 0 : 1 : (zipWith (+) fiblist (tail fiblist))
            let fib =  take x fiblist
            print fib
    -- Ex Remover Elemento da Lista    
    putStrLn "Digite uma lista ex: 1,2,3"
    m <- getLine    
    putStrLn "Digite o index a ser removido, a lista começa pelo index 0"
    n <- getLine
    let x = (read n :: Int)
    let list = (splitOn "," m)
    print (take x list ++ drop (1 + x) list)
    -- Ex Inserir
    putStrLn "Digite uma lista ex: 1,2,3"
    m <- getLine    
    putStrLn "Digite a posição do novo elemento na lista. A lista começa pelo index 0"
    n <- getLine
    let i = (read n :: Int)
    let list = (splitOn "," m)
    putStrLn "Digite um novo elemento a ser adicionado"
    o <- getLine 
    print (take i list ++ o : drop i list)
    -- Ex split
    putStrLn "Digite uma lista que será ordenada e separada em ímpares e pares ex: 1,2,3"
    m <- getLine      
    let list = (splitOn "," m)
    let preList = (f list)
    print (quicksort (getimp preList), quicksort (getpar preList))
    -- Ex impar par
    putStrLn "Digite uma lista que será ordenada em ímpares e pares ex: 1,2,3"
    m <- getLine      
    let list = (splitOn "," m)
    let preList = (f list)
    let posList = (quicksort (getimp preList) ++ quicksort (getpar preList))
    print posList