#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main()
{
    char choix = ' ';
    
    printf("--- MENU BIBLIOTHEQUE ---\n");
    printf("A. Quitter\n");
    printf("B. Gerer les adherents\n");
    printf("C. Gerer les livres\n");
    printf("Faites votre choix : ");
    
    scanf(" %c", &choix);
    choix = toupper(choix); // Convertit en majuscule
    
    switch (choix) {
        case 'A':
            printf("Fermeture de l'application...\n");
            break;
        case 'B':
            printf("Acces au module de gestion des adherents.\n");
            break;
        case 'C':
            printf("Acces au module de gestion des livres.\n");
            break;
        default:
            printf("Erreur : choix invalide !\n");
            break;
    }
    
    return 0;
}