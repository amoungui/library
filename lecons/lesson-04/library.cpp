#include <stdio.h>
#include <stdlib.h>

int main()
{
    int stockLivre = 10; // Stock initial
    
    printf("Stock initial : %d exemplaires\n", stockLivre);
    
    // Un adhérent emprunte un livre
    stockLivre--;
    printf("Apres un emprunt, stock actuel : %d\n", stockLivre);
    
    // Réapprovisionnement du stock de livres
    stockLivre += 5;
    printf("Apres reapprovisionnement, stock final : %d\n", stockLivre);
    
    return 0;
}