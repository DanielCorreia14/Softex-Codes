nome_do_aluno = "joao da silva"
nota_um= 8.5
nota_dois= 3.5
qtd_faltas=10
media=(nota_um+nota_dois)/2

if (media < 7):
    print("aluno reprovado")

elif (qtd_faltas>3):
    print("Aluno reprovado por falta")

elif (media >= 7) and (qtd_faltas<=3):
    print("Aluno aprovado!")
