import random


char = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
        'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z', ' ']


def _text_init():
    text = ""
    cont = 0
    while(cont < 28):
        text += random.choice(char)
        cont += 1
    return text

conting_generations = 0
text_target = "METHINKS IT IS LIKE A WEASEL"
sequence = _text_init()
best_pontuation = -1
while(best_pontuation < 28):
    conting_generations += 1
    copies = [sequence]*100
    for i in range(100):
        text_help = ""
        for letter in copies[i]:
            if(random.random() <= 0.05):
                text_help += random.choice(char)
            else:
                text_help += letter
        copies[i] = text_help
    for text in copies:
        pontuation = 0
        for i in range(28):
            if(text[i] == text_target[i]):
                pontuation += 1
        if(pontuation > best_pontuation):
            best_pontuation = pontuation
            sequence = text
    print("sequence %d: %s" % (conting_generations, sequence))
print("Generations:", conting_generations)