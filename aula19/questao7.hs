-- USP
-- a conjectura de Goldbach diz que um numero par maior que 2 pode ser representado como a soma
-- de dois numeros primos diferentes, menores que ele.

-- crie uma funcao em haskell, com a respectiva definicao de tipo, que receba um inteiro e retorne
-- uma tupla com os dois primos que satisfazem a conjectura de Goldbach para o numero dado.

{--
*Main> goldbach 28
(5, 23)
--}

-- Define o tipo da função
goldbach :: Int -> (Int, Int)

-- Implementação da função principal
goldbach n
  | n <= 2 || odd n = error "O número deve ser par e maior que 2, conforme a conjectura de Goldbach"
  -- Gera a primeira tupla (x, y) de números primos menores que n, onde x + y = n
  | otherwise = head [(x, y) | x <- primosAte (n - 2), y <- primosAte (n - 2), x + y == n, x /= y]

-- Função auxiliar para verificar se um número é primo
ehPrimo :: Int -> Bool
ehPrimo 1 = False -- 1 não é primo
ehPrimo 2 = True  -- 2 é primo
ehPrimo x = all (\k -> x `mod` k /= 0) [2 .. floor (sqrt (fromIntegral x))]

-- Função auxiliar para gerar todos os números primos menores que um dado número
primosAte :: Int -> [Int]
primosAte m = filter ehPrimo [2..m]