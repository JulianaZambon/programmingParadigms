-- construa uma funcao recursiva em haskell, com a respectiva definicao de tipo, que receba
-- um numero inteiro em base decimal e retorn sua representacao em base binaria.

{--
*Main> binario 23
10111
--}

-- Define o tipo da função
binario :: Int -> Int

-- Caso base: se o número for 0, retorna 0
binario 0 = 0

-- Passo recursivo: calcula o resto da divisão por 2 (último dígito binário)
-- e chama a função para o quociente, deslocando os dígitos binários à esquerda
binario n = binario (n `div` 2) * 10 + (n `mod` 2)