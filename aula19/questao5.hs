-- crie uma funcao em haskell, com a respectiva definicao de tipo, que dados dois indices, i e k, e uma lista,
-- retorne uma tupla com duas listas que sao fatia da lista, onde a fatia eh a lista contendo os elementos entre 
-- o i-esimo e o k-esimo elementos da lista original (ambos os limites incluidos)

{--
*Main> fatia "abcdefghik" 2 5
"bdef"
--}

-- Define o tipo da função
fatia :: [a] -> Int -> Int -> [a]

-- Implementação da função
fatia lista i k = take (k - i + 1) (drop i lista)
-- A função `drop` remove os primeiros `i` elementos da lista.
-- Ela retorna o restante da lista começando do elemento de índice `i`.
-- Exemplo: drop 2 [1,2,3,4,5] => [3,4,5]

-- A função `take` pega os primeiros `n` elementos da lista fornecida.
-- No caso, pegamos (k - i + 1) elementos a partir do índice `i`, já que `drop` ajusta a posição inicial.
-- Exemplo: take 3 [3,4,5,6] => [3,4,5]