import random

def gay(nome):
    return f'{nome} é {random.randint(1, 100)}% gay'

while True:
    nome = input("Digite seu nome: ");
    print(gay(nome))


