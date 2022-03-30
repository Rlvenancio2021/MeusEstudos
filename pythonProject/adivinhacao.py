import random #Importa bibliotéca Random

print("********************************")
print("Bem vindo ao jogo de Adivinhação")
print("********************************")

numero_secreto = random.randrange(1, 101) # random.randrange() gera um número aleatório entre 0 e 100
total_de_tentativas = 3

print(numero_secreto)

for rodada in range(1, total_de_tentativas + 1): # total_de_tentativas + 1 para garantir que tenhamos a 3 tentativas,
    #caso contrário quando a loop chegar no 3 ele irá parar sem executar.
    print("Tentativa {} de {}".format(rodada, total_de_tentativas))
    chute = int(input("Digite o seu número: "))

    if (chute < 1 or chute > 100):
        print("Você deve digitar um número entre 1 e 100!")
        continue # Continua com a próxima interação do programa

    acertou = chute == numero_secreto
    maior = chute > numero_secreto
    menor = chute < numero_secreto

    if(acertou):
        print("Parabéns! Você acertou!")
        break # Encerra a execução do programa caso a condição for tree.
    else:
        if(maior):
            print("O seu chute foi maior do que o número secreto!")
        elif(menor):
            print("O seu chute foi menor do que o número secreto!")

print("Fim do jogo")