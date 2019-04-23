import numpy as np
import pandas as pd
from math import ceil

#Funcoes utilizadas neste script
# => ceil() - Funcao utilizada para arrendondar para cima um número 
#Parametros utilizados:
# numero - numero que sera arrendondado

# => np.random.randint() - Retorna um numero ou conjunto de numeros aleatoriamente a partir de limites definidos
#Parametros utilizados:
# low - limite inferior
# high - limite superior + 1 (é necessário somar mais 1, pois o limite superior não entra na geração randomica)
# size - quantidade de numeros randomicamente gerados

# => read_csv() - Funcao explicada no script da aula 16

populacao = 150
amostra = 15
k = ceil(populacao/amostra)

r  = np.random.randint(low = 1, high =  k + 1, size = 1)

acumulador= r[0]
sorteados = []

for i in range(amostra):
    sorteados.append(acumulador)   
    acumulador += k
    
    base = pd.read_csv('iris.csv')
base_final = base.loc[sorteados]