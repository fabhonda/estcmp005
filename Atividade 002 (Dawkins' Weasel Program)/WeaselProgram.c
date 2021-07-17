#include<stdio.h>
#include<stdlib.h>
#include<time.h>

char alphabet[28] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
                    'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
                    'U', 'V', 'W', 'X', 'Y', 'Z', ' '};

void print_text(char *text, int seq){
    printf("Sequence %d: ", seq);
    for(int i = 0; i < 28; i++){
        printf("%c", text[i]);
    }
    printf("\n");
}

int main(){
    srand(time(NULL));
    char text_target[28] = "METHINKS IT IS LIKE A WEASEL";
    char sequence[28];
    char copies[100][28];
    int best_pontuation = -1, conting_generations = 0, pontuation;
    for(int i = 0; i < 28; i++){
        sequence[i] = alphabet[rand()%28];
    }
    while(best_pontuation < 28){
        conting_generations++;
        for(int i = 0; i < 100; i++){
            for(int j = 0; j < 28; j++){
                copies[i][j] = sequence[j];
            }
        }
        for(int i = 0; i < 100; i++){
            for(int j = 0; j < 28; j++){
                if(rand()%100 < 5){
                    copies[i][j] = alphabet[rand()%28];
                }
            }
        }
        for(int i = 0; i < 100; i++){
            pontuation = 0;
            for(int j = 0; j < 28; j++){
                if(copies[i][j] == text_target[j]){
                    pontuation++;
                }
            }
            if(pontuation > best_pontuation){
                best_pontuation = pontuation;
                for(int k = 0; k < 28; k++){
                    sequence[k] = copies[i][k];
                }
            }
        }
        print_text(sequence, conting_generations);
    }
    printf("Generations: %d\n", conting_generations);
    return 0;
}