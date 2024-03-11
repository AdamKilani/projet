
# Projet-Outillage
## Jeu de Devinette

### Introduction
Salut ! Prêt pour une aventure de devinette excitante ? Ce petit programme va te mettre au défi de deviner un nombre mystère. C'est super simple, après chaque essai, il te dira si ton nombre est trop grand ou trop petit. Le but ? Trouver le fameux nombre secret en faisant le moins d'essais possible.

### Utilisation
1. Clonez le dépôt.
2. Compilez le programme à l'aide du fichier Makefile fourni :
    ```
    make
    ```
3. Exécutez le programme :
    ```
    ./guessing_game
    ```
4. Suivez les instructions pour jouer au jeu. Entrez votre devinette lorsque vous y êtes invité.
5. Après avoir deviné le bon nombre, le programme affichera le nombre d'essais nécessaires.
6. Pour nettoyer les fichiers générés :
    ```
    make clean
    ```

## Structure
- `main.c`: Contient la fonction principale où le jeu est initié.
- `game.c`: Contient l'implémentation du jeu de devinette.
- `game.h`:  Fichier d'en-tête déclarant la fonction play_game.

## Défis
Au cours du développement, nous avons relevé le défi de rendre le jeu encore plus engageant et interactif. L'amélioration de l'expérience utilisateur tout en maintenant la simplicité du jeu s'est avérée être une tâche intéressante. Nous avons également exploré des moyens d'ajouter des fonctionnalités bonus pour rendre le processus de devinette encore plus captivant.

## Fonctionnalités supplémentaires
- Validation d'entrée pour gérer les entrées non numériques.

## Défauts
-Malgré nos efforts pour garantir une expérience de jeu fluide, nous avons identifié un défaut mineur. Dans certaines situations rares, le programme peut ne pas répondre de manière optimale aux entrées non numériques de l'utilisateur. Nous travaillons activement à résoudre ce problème pour assurer une expérience utilisateur sans accroc et intuitive. Votre retour serait précieux pour nous aider à améliorer le jeu !

## Archive
```
tar -cvz inc game.c game.h main.c  Doxyfile makefile README.md .gitignore -f techdev-projet-outillage-kilaniadam.tar.gz
```


## Documentation
La documentation du projet peut être générée à l'aide de Doxygen. Pour générer la documentation, exécutez la commande suivante dans le répertoire du projet :
```
doxygen Doxyfile
```

## Debugging

Pour analyser l'utilisation de la mémoire du programme à l'aide de Valgrind, utilisez la commande suivante :
```
valgrind --leak-check=full ./guessing_game
```
