import pandas as pd
from sklearn.model_selection import train_test_split

#Funcoes utilizadas neste script
# => train_test_split() - Funcao utilizada para a divisao da base de dados para treino e teste. 
#                          Também pode ser utilizada para amostragem estratificada
#Parametros utilizados:
# array1 - Conjunto de dados sem a coluna que sera estratificada
# array2 - Conjunto de dados apenas com a coluna estratificada
# test_size- porcentagem de dados que nao serao utilizados na amostra (valor float)
# stratify = Conjunto de dados apenas com a coluna estratificada

#value_counts() - Retorna a quantidade de registros existentes para cada valor 
#                     da coluna selecionada

iris = pd.read_csv('iris.csv')

iris['class'].value_counts()

x, _, y, _ = train_test_split(iris.iloc[:, 0:4], iris.iloc[:,4], test_size = 0.5, 
                              stratify = iris.iloc[:,4])
y.value_counts()


infert = pd.read_csv('infert.csv')

x1, _, y1, _ = train_test_split(infert.iloc[:, 2:8], infert.iloc[:, 1], test_size= 0.6,
                                stratify = infert.iloc[:, 1])

y1.value_counts()