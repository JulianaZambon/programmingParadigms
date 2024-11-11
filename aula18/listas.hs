{-- aula 18: conceitos de manipulacao de listas em Haskel --}

{-- Função que inverte uma lista --}
inverter :: [a] -> [a]
inverter [] = []  {-- Caso base: lista vazia já está invertida --}
inverter (x:xs) = inverter xs ++ [x]  {-- Recursão: inverte o restante da lista e coloca o primeiro elemento por último --}

{-- Função main, que é o ponto de entrada do programa
do tipo IO (), que indica que a função realiza ações de entrada/saída (I/O) e não retorna um valor significativo (apenas ()) --}
main :: IO ()
main = do
    print (inverter [1, 2, 3, 4])  -- Saída: [4, 3, 2, 1]
    print (inverter ["a", "b", "c"])  -- Saída: ["c", "b", "a"]
