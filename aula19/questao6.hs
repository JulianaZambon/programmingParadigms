-- crie uma funcao em haskell, com a respectiva definicao de tipo, que receba uma lista
-- e um numero inteiro 'n' e rotacione na posicao n.

{--
*Main > rotaciona "abcdefghik" 3
"defghikabc"
--}

-- Define o tipo da função
rotaciona :: [a] -> Int -> [a]

-- Implementação
rotaciona lista n = drop n lista ++ take n lista