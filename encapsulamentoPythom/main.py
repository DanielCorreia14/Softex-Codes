class Conta:

    def __init__(self, saldo, numero, idade):
        self.saldo = saldo
        self.numero = numero
        self.idade = idade

    @property
    def getSaldo(self):
        return self.saldo
    def setSaldo(self, saldo):
        if (saldo < 0):
            print("saldo nao pode ser negativo")
        else:
            self.saldo = 0

    @property
    def getNumero(self):
        return self.numero
    def setNumero(self, numero):
        self.numero = numero

    def getIdade(self):
        return self.idade

    def setIdade(self, idade):
        if (idade < 0):
            print("Idade nao pode ser negativa")
        else:
            self.idade = 0



conta1 = Conta(100,1,18)
conta2 = Conta(3000,2,48)

print(conta1.getSaldo)
print(conta1.getNumero)

print(conta2.getSaldo)
print(conta2.getNumero)


conta1.setSaldo(-100)
conta2.setIdade(-1)

