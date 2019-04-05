addEspOnStr :: String -> Int -> String

addEspOnStr [] w = []
addEspOnStr (x:[]) z = x:[]
addEspOnStr (x:y) z = [x] ++ addEspaco z  ++ addEspOnStr y z

addEspaco :: Int -> String

addEspaco 0 = []
addEspaco z = "." ++ addEspaco (z-1)

type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa, Livro)]

baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
               ("Andre","Duna"),
               ("Fernando","Jonathan Strange & Mr. Norrell"),
               ("Fernando","Duna")]

livros :: BancoDados -> Pessoa -> [Livro]

livros [] _ = []
livros ((x,y):z) p | x == p = (y:livros z p)
                   | otherwise = livros z p

emprestimos :: BancoDados -> Livro -> [Pessoa]

emprestimos [] _ = []
emprestimos ((x,y):z) l | l == y = (x: emprestimos z l)
                        | otherwise = emprestimos z l


emprestado :: BancoDados -> Livro -> Bool

emprestado [] _ = False
emprestado ((x,y):z) l | l == y = True
                       | otherwise = emprestado z l

-- qtdEmprestimos :: BancoDados -> Pessoa -> Int

getBancoDados :: BancoDados -> String --Como acessar uma "variável" em haskell

getBancoDados ((x,y):z) = x

--Show transforma um inteiro em uma string
--read transforma uma string em um tipo definido (int, double)