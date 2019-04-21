import pandas as pd
import numpy as np

#Funcoes utilizadas neste script

# => np.random.choice() - Funcao utilizada para geracao de amostras aleatorias simples com ou sem repeticao
#Parametros utilizados:
# - a: Conjunto de dados para a extracao das amostras
# - size: Quantidade de numeros aleatorios a serem gerados
# - replace: valor logico. Determina se o experimento eh com reposicao ou nao
# - p: Vetor de probabilidade para obtencao dos elementos do conjunto amostrado

# => len() => Retorna a quantidade de elementos de um conjunto de dados
#Parametros utilizados:
# - x: Conjunto de dados

# => np.random.seed() => Funcao para criar uma semente aleatoriedade para que um experimento ja executado
#                  possa ser repetido.

# => read_csv = Funcao para carregar arquivo csv em memoria. 
#Parametros utilizados
# - filepath_or_buffer: Caminho ou array de bytes do arquivo que sera carregado
base = pd.read_csv('iris.csv')

# Cria semente de aleatoriedade para que a geracao da amostra na linha 32 retorne sempre
# o mesmo valor
np.random.seed(2345)

#Retorna amostra simples com repeticao com 150 elementos a partir do conjunto de dados (0, 1)
# com probabilidade de 50% para cada elemento
amostra = np.random.choice(a = [0,1], size = 150, replace = True, p = [0.5, 0.5])

#Retorna a quantidade elementos na amostra gerada
len(amostra)

#Retorna a quantidade elementos iguais a 1 na amostra gerada
len(amostra[amostra == 0])

#Retorna a quantidade elementos iguais a 0 na amostra gerada
len(amostra[amosra == 1])
