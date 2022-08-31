import pandas as pd
tabela = pd.read_csv("notas_alunos.csv", encoding='ISO-8859-1', sep = ';')

print(tabela)
df = pd.read_csv("C:/Users/PC/PycharmProjects/exerciciopandas/notas_alunos.csv")



df["media"] = (df["nota_1"] + df["nota_2"]) / 2


df.loc[df["media"] >= 7, "situacao"] = "APROVADO"

df.loc[df["faltas"] > 5, "situacao"] = "REPROVADO"

df.loc[df["media"] < 7, "situacao"] = "REPROVADO"

faltas = df["faltas"].max()
media = df["media"].median()
mediaMaxima = df["media"].max()

print("maior quantidade de faltas: "+str(faltas))
print("media dos alunos: "+str(media))
print("maior media entre os alunos: "+str(mediaMaxima))

df.to_csv("alunos_situacao.csv")
