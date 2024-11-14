-- construa uma funcao em haskell, com a respectiva definicao de tipo, que receba duas listas de caracteres
-- e verifique se algum caractere de uma lista esta na outra. poderão ser criadas funcoes auxiliares.

{--
*Main> tem_comuns [1,2,3,4,5,6] [7,8,9,0,2]
True
--}

tem_comuns :: [Char] -> [Char] -> Bool
tem_comuns [] _ = False -- se a primeira lista for vazia, nao tem como ter caracteres comuns (Caso base)
