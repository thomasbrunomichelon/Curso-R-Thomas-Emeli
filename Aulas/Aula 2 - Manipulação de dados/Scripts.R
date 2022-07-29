### R base ####
# Selecionar
dados <- data.frame(a=c(3,6,7,2),b=c(1,1,2,2),c=c("X", "Y", "Z", "W")) # data frame de exemplo
dados # mostrar os dados
dados$a # coluna "a"
dados[,1] # primeira coluna
dados[,-1] # tudo menos a primeira coluna
dados[,c(1,2)] # primeira e segunda coluna
dados[1,1] # primeira linha, primeira coluna
dados$a[1] # coluna "A", primeiro elemento

# Filtrar
dados[dados$b=="1",] # todas as linhas referentes ao nível "1" da coluna b
dados[dados$b=="1",1] # linhas da primeira coluna referentes ao nível 1 da coluna b
dados$a[dados$b=="1"] # mesmo resultado anterior, porém acessando diretamente da primeira coluna
dados$a[!dados$b =="1"] # linhas da coluna não pertencentes ao nível "1" da coluna b
dados[dados$a > 5 & dados$c == "Z",] # todas as linhas em que a coluna a for maior que 5 e a c igual a "z"
# Subset
subset(dados, a>5 & c=="Z")

#Substituir
dados # mostrar os dados
dados[1,1] <- 6 # alterando a primeira linha da primeira coluna
dados[2] <- c("lavoura", "lavoura", "floresta", "floresta")  # alterando toda a segunda coluna
dados # mostrar os dados

# Criar
dados # mostrar os dados
dados$d <- c(1,2,3,4) # criar nova coluna
dados$log_A <- log(dados$a) # criar nova coluna com dados transformados (log) da primeira coluna
dados # mostrar os dados

# Renomear
names(dados) # mostrar nome dos dados
names(dados)[2] <- "ambiente" # alterar o segundo
names(dados) # mostrar o nome dos dados

# Alterar classe
class(dados$ambiente) # mostrar a classe da coluna "ambiente"
dados$ambiente <- as.factor(dados$ambiente) # alterar a classe e atribuir a coluna "ambiente"
class(dados$ambiente) # mostrar a classe da coluna "ambiente"

#### dplyr ####
# Selecionar
dados <- data.frame(a=c(3,6,7,2),b=c(1,1,2,2),c=c("X", "Y", "Z", "W")) # data frame
select(dados,a)
select(dados,-a)
select(dados,a,b)

# Filtrar
filter(dados, b =="1")  # todas as linhas referentes ao nível "1" da coluna b
select(filter(dados, b =="1"), a) # linhas da primeira coluna referentes ao nível 1 da coluna b
select(filter(dados, b !="1"),a) # linhas da coluna a não pertencentes ao nível "1" da coluna b
filter(dados, a>5 & c=="Z") # todas as linhas em que a coluna a for maior que 5 e a c igual a "z"

# Substituir
dados <- mutate(dados, b=replace(b, b==1, "lavoura"))
dados <- mutate(dados, b=replace(b, b==2, "floresta"))

# Criar
dados <- mutate(dados, d=c(1,2,3,4)) # criar nova coluna
dados <- mutate(dados, log_A=log(a)) # criar nova coluna com dados transformados (log) da primeira coluna
dados

# Renomear
dados <- rename(dados, "ambiente"=b)

# Alterar classe
dados <- mutate(dados, ambiente=as.factor(ambiente))

