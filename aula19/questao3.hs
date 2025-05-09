-- crie uma funcao em haskell, com a respectiva definicao de tipo, que recebe um numero impar
-- N e calcule o fatorial duplo de N. po exemplo, se N = 5 fatduplo(5) = 5*3*1 = 15.

{--
*Main> fatduplo 5
15
--}

-- Define o tipo da função
fatduplo :: Int -> Int

-- Caso base: o fatorial duplo de 1 é 1
fatduplo 1 = 1

-- Caso geral: N multiplicado pelo fatorial duplo de N-2
fatduplo n = n * fatduplo (n - 2)