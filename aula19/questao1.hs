-- construa uma funcao em haskell, com a respectiva definicao de tipo, que receba duas listas de caracteres
-- e verifique se algum caractere de uma lista esta na outra. poderão ser criadas funcoes auxiliares.

{--
*Main> tem_comuns [1,2,3,4,5,6] [7,8,9,0,2]
True
--}

-- Define o tipo da função
tem_comuns :: [Char] -> [Char] -> Bool

-- Caso base: se a primeira lista for vazia, não pode haver caracteres em comum
tem_comuns [] _ = False

-- Caso base: se a segunda lista for vazia, também não há caracteres em comum
tem_comuns _ [] = False

-- Passo recursivo
tem_comuns (x:xs) ys
  | verifica x ys = True -- Se x está em ys, retorna True
  | otherwise = tem_comuns xs ys -- Caso contrário, verifica o restante da lista

-- Função auxiliar para verificar se um caractere está na lista
verifica :: Char -> [Char] -> Bool
verifica _ [] = False -- Se a lista é vazia, o caractere não está presente
verifica c (y:ys)
  | c == y = True -- Se o caractere c é igual ao primeiro elemento, retorna True
  | otherwise = verifica c ys -- Continua verificando o restante da lista