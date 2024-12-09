-- Crie em Haskell as seguintes definicoes de tipo, usando como base os tipos primitivos adequados: 
-- Nome; Rua; Numero; Bairro; Cep; Email; Telefone; Endereco composto de Rua, Numero, Bairro e Cep; Clente
-- composto de Nome, Endereco, Telefone e Email


-- Definições básicas de tipos
type Nome = String
type Rua = String
type Numero = Int
type Bairro = String
type Cep = String
type Email = String
type Telefone = String

-- Definição do tipo Endereco como um registro
data Endereco = Endereco
  { rua :: Rua
  , numero :: Numero
  , bairro :: Bairro
  , cep :: Cep
  } deriving (Show, Eq)

-- Definição do tipo Cliente como um registro
data Cliente = Cliente
  { nome :: Nome
  , endereco :: Endereco
  , telefone :: Telefone
  , email :: Email
  } deriving (Show, Eq)
