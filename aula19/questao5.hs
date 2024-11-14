-- crie uma funcao em haskell, com a respectiva definicao de tipo, que dados dois indices, i e k, e uma lista,
-- retorne uma tupla com duas listas que sao fatia da lista, onde a fatia eh a lista contendo os elementos entre 
-- o i-esimo e o k-esimo elementos da lista original (ambos os limites incluidos)

{--
*Main> fatia "abcdefghik" 2 5
"bdef"
--}

fatia :: [a] -> Int -> Int -> [a]