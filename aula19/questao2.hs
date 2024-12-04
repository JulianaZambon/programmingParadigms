-- o superfatorial de um numero N eh definido pelo produto dos N primeiros fatoriais de N.
-- assim, o superfatorial de 4 eh sf(4)= 1! * 2! * 3! * 4! = 288.

-- crie uma funcao em haskell, com a respectiva definicao de tipo, que retorne o superfatorial 
-- de um numero inteiro positivo N. poderao ser criadas funcoes auxiliares.


-- Define a função que calcula o fatorial de um número
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

-- Define a função superfatorial que calcula o produto dos fatoriais
superfatorial :: Int -> Int
superfatorial 0 = 1
superfatorial n = fatorial n * superfatorial (n - 1)