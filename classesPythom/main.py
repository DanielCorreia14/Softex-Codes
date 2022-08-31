class Calc:
    def __init__(self, valor):
        self.x=valor

    def calcc(self):
        self.z=self.x+1
        if (self.z % 2 == 0):
            self.z=self.x-1
        elif(self.z<9):
            self.z=self.x+10
        return 'incremento feito: '+ str(self.z)

num = int(input('entre com um numero: '))
obj = Calc(num)
y = obj.calcc()
num1 = int(input('entre com um numero: '))
obj = Calc(num1)
w = obj.calcc()
num3 = int(input('entre com um numero: '))
obj = Calc(num3)
a = obj.calcc()

print(y)
print(w)
print(a)
