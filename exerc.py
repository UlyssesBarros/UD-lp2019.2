# Carro modo Estruturado

carro = []
print("Vamos representar um carro: \n")
n_portas = int(input("Digite o número de portas: \n"))
n_rodas = int(input("Digite o número de rodas: \n"))
cor = input("Qual a cor do carro?\n")
marca = input("Qual a marca do carro?\n")

carro.append(n_rodas)

print("O número de rodas do carro estruturado é: %s \n" %(carro[0]))

# Carro modo Orientado a Objetos

class Car:

    n_rodas = 0
    n_portas = 0
    cor = ""
    marca = "" 

    def setNumRodas(self, x):
        self.n_rodas = x

    def setNumPortas(self, x):
        self.n_rodas = x

    def setCor(self, x):
        self.n_rodas = x

    def setNumRodas(self, x):
        self.n_rodas = x
    

newCar = Car()
num_rodas = int(input("Digite o número de rodas do carro OO \n"))
newCar.setNumRodas(num_rodas)
print("O número de rodas do carro OO é: %s" %(newCar.n_rodas))
