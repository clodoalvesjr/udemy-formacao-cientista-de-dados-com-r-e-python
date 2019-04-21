library("TeachingSampling")

# Funcoes utilizadas neste script

# => summary: funcao ja comentada no script 14
# => S.SY(): funcao para geracao de amostras sistematicas
#Parametros utilizados
# - N: total do conjunto de dados
# - a: numero de grupos na divisao da populacao (intervalo)

summary(iris)

amostra = S.SY(150, 10)


amostraIris = iris[amostra, ]
