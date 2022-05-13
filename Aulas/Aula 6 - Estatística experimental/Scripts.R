# Delineamento Inteiramente Casualizado (DIC)
# Carregando os pacotes
library(ExpDes.pt)
library(ggplot2)

# Delineamento Inteiramente Casualizado (DIC)

yij=mu+tratamento+erro

mu=média geral
tratamento=média geral - média do tratamento i

yi=b0+b1*xi

#- Um DIC é obtido pela fórmula notação: y~x

## Fatorial simples

#- Resposta~Tratamento
dados <- ex1
dados$trat <- as.factor(dados$trat)

Modelo_DIC <- lm(formula=ig~trat, data=dados)

anova(Modelo_DIC)

#- Obs.: colocar "formula=" não é necessário, foi utilizado apenas para deixar mais claro.

# Fatorial duplo

# Resposta~Tratamento1+Tratamento2+Tratamento1*Tratamento2 OU Resposta~Tratamento1*Tratamento2

dados_fatorial_duplo <- ex4
dados_fatorial_duplo$revol <- as.factor(dados_fatorial_duplo$revol) 


Modelo_DIC_2 <- lm(formula=c~revol+esterco+revol*esterco, data=dados_fatorial_duplo)

anova(Modelo_DIC_2)

# Delineamento de Blocos Casualizados

## Fatorial simples

ex2
