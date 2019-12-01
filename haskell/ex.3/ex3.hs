import Data.List.Split

rev :: [a] -> [a]
rev xs = reverse xs

main = do 

    let texto = "Não te amo mais.\\nEstarei mentindo dizendo que\\nAinda te quero como sempre quis.\\nTenho certeza que\\nNada foi em vão.\\nSinto dentro de mim que\\nVocê não significa nada.\\nNão poderia dizer jamais que\\nAlimento um grande amor.\\nSinto cada vez mais que\\nJá te esqueci!\\nE jamais usarei a frase:\\nEU TE AMO!\\nSinto, mas tenho que dizer a verdade\\nÉ tarde demais..."
    let list = (splitOn "\\n" texto)
    print (rev list)   