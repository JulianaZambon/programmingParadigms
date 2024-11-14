-- USP
-- a conjectura de Goldbach diz que um numero par maior que 2 pode ser representado como a soma
-- de dois numeros primos diferentes, menores que ele.

-- crie uma funcao em haskell, com a respectiva definicao de tipo, que receba um inteiro e retorne
-- uma tupla com os dois primos que satisfazem a conjectura de Goldbach para o numero dado.

{--
*Main> goldbach 28
(5, 23)
--}

goldbach :: Int -> (Int, Int)