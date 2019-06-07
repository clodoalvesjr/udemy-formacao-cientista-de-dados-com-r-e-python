#Funcoes utilizadas neste script

# => sample() - Funcao utilizada para calcular a media
#Parametros utilizados:
# - x: Conjunto de dados

# => median() => Funcao utilizada para calcular a mediana
#Parametros utilizados:
# - x: Conjunto de dados

# => median() => Funcao utilizada para calcular os quartis de um conjunto de dados
#Parametros utilizados:
# - x: Conjunto de dados

# => sd() => Funcao utilizada para calcular o desvio padrao de um conjunto de dados
#Parametros utilizados:
# - x: Conjunto de dados

# => summary => Funcao utilizada para calcular diversas medidas de centralidade
#  e variabilidade
#Parametros utilizados:
# - x: Conjunto de dados

jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)
mean(jogadores)
median(jogadores)

quartis = quantile(jogadores)
quartis

sd(jogadores)

summary(jogadores)
