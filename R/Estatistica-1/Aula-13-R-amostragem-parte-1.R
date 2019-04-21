#Funcoes utilizadas neste script

# => sample() - Funcao utilizada para geracao de amostras aleatorias simples com ou sem repeticao
#Parametros utilizados:
# - x: Conjunto de dados para a extracao das amostras
# - size: Quantidade de numeros aleatorios a serem gerados
# - replace: valor logico. Determina se o experimento eh com reposicao ou nao
# - prob: Vetor de probabilidade para obtencao dos elementos do conjunto amostrado

# => length() => Retorna a quantidade de elementos de um conjunto de dados
#Parametros utilizados:
# - x: Conjunto de dados

# => set.seed() => Funcao para criar uma semente aleatoriedade para que um experimento ja executado
#                  possa ser repetido.


#Retorna amostra simples com repeticao com 150 elementos a partir do conjunto de dados (0, 1)
# com probabilidade de 50% para cada elemento
amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.5, 0.5))


#Retorna a quantidade elementos iguais a 1 na amostra gerada
length(amostra[amostra == 1])

#Retorna a quantidade elementos iguais a 0 na amostra gerada
length(amostra[amostra == 0])

# Cria semente de aleatoriedade para que a geracao da amostra na linha 32 retorne sempre
# o mesmo valor

set.seed(123)
sample(c(100), 1)
