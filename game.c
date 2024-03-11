#include <stdlib.h>
#include <time.h>
#include "game.h"

int generateSecretNumber() {
    srand(time(NULL));
    return rand() % 100 + 1; // Generate a random number between 1 and 100
}
