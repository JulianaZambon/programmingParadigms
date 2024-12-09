-- Definição da função principal
removeElemento :: [a] -> Int -> [a]
removeElemento [] _ = [] -- Caso base: lista vazia retorna lista vazia
removeElemento (x:xs) 0 = xs -- Remove o primeiro elemento (índice 0)
removeElemento (x:xs) n = x : removeElemento xs (n - 1) -- Avança recursivamente na lista
