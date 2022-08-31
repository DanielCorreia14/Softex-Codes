import enum

class CC(enum.Enum):
        candidato_1 = 889
        candidato_2 = 847
        candidato_3 = 515
        branco = 0

loop = bool(1)
indice = ['candidato 1', 'candidato 2', 'candidato 3', 'branco']
value = [0, 0, 0, 0]
nulo = 0
total = 0

while(loop):
    try:
        voto = int(input("Qual candidato?"))
        if voto == CC.candidato_1.value:
            value[0] += 1
        elif voto == CC.candidato_2.value:
            value[1] += 1
        elif voto == CC.candidato_3.value:
            value[2] += 1
        elif voto == CC.branco.value:
            value[3] += 1
        else:
            nulo += 1
        total+=1

        fim = input("Deseja finalizar a votacao? Sim - Não: ")
        if (fim == 'Sim'):
            loop = bool(0)
    except:
        print('Erro digite novamente')
        loop = bool(1)


    maior = 0
    for i in value:
        if (i > maior):
            maior = value.index(i)

print('Vencedor:', indice[maior])
print('Candidato 1:', str(value[1]))
print('Candidato 2:', str(value[2]))
print('Candidato 3:', str(value[3]))
print('Brancos:', str(value[3]))
print('Nulos:', str(nulo))
print('Total:', str(total))
