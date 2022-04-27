
# 1. Estrutura de dados no R (são as formas que podemos armazenar informações no R, informações que podem ser dos nosso dados ou geradas a partir do uso de funções e modelos)
# Vetores (contem um uma linha com elementos primitivos (interger, numeric, logica, character, complex))
Exemplo1_vetor <- 1:20
Exemplo2_vetor <- c("a", "b", "c")

# Matrizes

# Data frame
data(Orange)

# Listas


# 2. Manipulação de dados ####
# 2.1 Manipulação de dados usando o R base
# Carregando os dados
data(Orange)

# Acessando os dados
# "$" é usado para acessar uma coluna de dados (ou seja, um vetor dentro do data.frame)
Orange$Tree

# "[" é usado para acessar varios elementos de um data.frame e pode usar de acordo com a posição na linha e coluna
Orange[1:5,] # antes da vírgula é linha depois é coluna. "Vá no data.frame orange e me da linha 1 a linha 5 e com todas as colunas"
Orange[1] # primeira coluna

fix(Orange)

# Filtrando dados
# "==" significa exatamente
Orange[Orange$Tree==3,]

# "<", "<=" menor ou menor e igual
Orange[Orange$circumference>=100,]

# ">", ">=" maior ou maior ou igual
Orange[Orange$circumference<=100,]

# "!=" Diferente de
Orange[Orange$Tree!=2,]

# "&" Significa "e", é usado para ligar duas condições em que ambas devem ser satisfeitas
Orange[Orange$Tree == 2 & Orange$age >= 30,]

# "|" Significa "ou", usado para ligar duas condições em que pelo menos uma deva ser satisfeita
Orange[Orange$Tree == 2 | Orange$Tree == 3,]

# "!" Significa "não" e é usado para especificar algo que deva ser omitido
Orange[!Orange$Tree == 2,]

# Pacote dyplr: tem funções que fazem as operações vistas anteriormente
subset(Orange, circumference > 200, select=c(age, Tree))

https://data-flair.training/blogs/data-manipulation-in-r/
  