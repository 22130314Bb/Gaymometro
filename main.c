include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    while (1)
    {
        char nome[30];

        printf("Digite seu nome: ");
        scanf("%s", &nome);

        srand(time(NULL));
        int gay = rand() % 101;
        printf("%s é %d%% gay\n", nome, gay);
    }
    

}