{-- Retornar os ’n’ primeiros elementos de uma lista.--}

{-- para compilar usa ":load retorna.hs" e para testar "primeiros 3 [1, 2, 3, 4, 5]"--}
primeiros :: Int -> [a] -> [a]

primeiros 0 _ = []
primeiros _ [] = []
primeiros n (a:x) = a : primeiros (n-1) x