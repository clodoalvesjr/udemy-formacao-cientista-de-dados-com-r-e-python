library("sampling")

#Funcoes utilizadas neste script

# => summary() - Retorna um resumo de informacoes sobre o conjunto de dados
#Parametros utilizados:
# - object: Conjunto de dados

# => strata() - Funcao para a geracao de amostras estratificadas
# Parametros utilizados:
# - data: conjunto de dados
# - stratanames: colunas utilizadas para estratificacao
# - size: Vetor com tamanhos de amostra para cada valor possivel nas colunas selecionadas para
#         estratificacao
# - method: método utilizado para a geracao dos dados aleatorios

summary(iris)

amostraIris = strata(iris, c("Species"), c(25, 25, 25), method="srswor")

summary(amostraIris)

#Caso as categorias existentes na coluna selecionada para estratificacao nao
#nao possuam a mesma quantidade de registros, sera necessario que 
#os valores setados para o parametro 'size' sejam calculados a partir de 
#regras de tres para que as proporções da quantidade de registro para 
#cada categoria da coluna escolhida sejam respeitadas na amostra

#Por exemplo, no conjunto de dados 'infert' as categorias para a coluna 'education' 
#possuem quantidade de registros diferentes 

summary(infert)

#Então:
#  a     d
# --- = ---
#  b     c
# 
# onde:
#   
# a = quantidade de elementos em cada categoria da coluna selecionada
# b = quantidade total de elementos na coluna selecionada
# c = quantidade de elementos na amostra
# d = resultado proporcional da quantidade de elementos na amostra para cada categoria 
#     da coluna selecionada

amostraInfert = strata(infert, c("education"), size=c(5, 48, 47), method="srswor")
summary(amostraInfert)
