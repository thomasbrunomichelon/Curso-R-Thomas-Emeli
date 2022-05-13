# 1. Estrutura de dados no R (s?o as formas que podemos armazenar informa??es no R, informa??es que podem ser dos nosso dados ou geradas a partir do uso de fun??es e modelos)
# Vetores (contem um uma linha com elementos primitivos (interger, numeric, logica, character, complex))
Exemplo1_vetor <- 1:20
Exemplo2_vetor <- c("a", "b", "c")

# Matrizes

# Data frame
data(Orange)

# Listas


# 2. Manipula??o de dados ####
# 2.1 Manipula??o de dados usando o R base
# Carregando os dados
data(Orange)

# Acessando os dados
# "$" ? usado para acessar uma coluna de dados (ou seja, um vetor dentro do data.frame)
Orange$Tree

# "[" ? usado para acessar varios elementos de um data.frame e pode usar de acordo com a posi??o na linha e coluna
Orange[1:5,] # antes da v?rgula ? linha depois ? coluna. "V? no data.frame orange e me da linha 1 a linha 5 e com todas as colunas"
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

# "&" Significa "e", ? usado para ligar duas condi??es em que ambas devem ser satisfeitas
Orange[Orange$Tree == 2 & Orange$age >= 30,]

# "|" Significa "ou", usado para ligar duas condi??es em que pelo menos uma deva ser satisfeita
Orange[Orange$Tree == 2 | Orange$Tree == 3,]

# "!" Significa "n?o" e ? usado para especificar algo que deva ser omitido
Orange[!Orange$Tree == 2,]

# Pacote dyplr: tem fun??es que fazem as opera??es vistas anteriormente
subset(Orange, circumference > 200, select=c(age, Tree))

https://data-flair.training/blogs/data-manipulation-in-r/

|>