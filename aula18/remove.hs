{-- remover o menor elemento da lista --}

removeMenor :: (Ord a) => [a] -> [a]
removeMenor [] = []  -- Se a lista estiver vazia, retorna uma lista vazia
removeMenor lista = let m = minimum lista  -- Encontra o menor elemento
                    in removeFirst m lista  -- Remove apenas a primeira ocorrência do menor

-- Função auxiliar para remover a primeira ocorrência de um elemento
removeFirst :: (Eq a) => a -> [a] -> [a]
removeFirst _ [] = []  -- Se a lista estiver vazia, retorna uma lista vazia
removeFirst y (x:lista)
    | x == y    = lista  -- Quando encontra o elemento, remove-o e retorna o restante da lista
    | otherwise = x : removeFirst y lista  -- Caso contrário, continua a busca


