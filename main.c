#include <stdio.h>
#include "game.h"

int main() {
    int secretNumber = generateSecretNumber();
    int guess;
    int tries = 0;

    printf("Welcome to the Guessing Game!\n");

    do {
        printf("Enter your guess: ");
        scanf("%d", &guess);

        tries++;

        if (guess == secretNumber) {
            printf("Congratulations! You guessed the correct number in %d tries.\n", tries);
        } else if (guess < secretNumber) {
            printf("Too small. Try again.\n");
        } else {
            printf("Too large. Try again.\n");
        }
    } while (guess != secretNumber);

    return 0;
}
