numeroX=True
while numeroX == True:

    try:
        nome = input("Digite seu nome")
        nasci = int(input("digite seu ano de nascimento, entre 1922 e 2021 "))
        if(nasci>=1922 and nasci <=2021):
            numeroX=True
            print("nome:", nome,"\nidade em 2022:",2022-nasci)
        else:
            numeroX=False
            print("Ano invalido, digite algum dentro da margem")
    except:
        print("Ano invalido, digite algum dentro da margem")
