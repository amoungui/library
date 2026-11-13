#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int MAX_LIVRES_AUTORISES = 5; // Constante
    int idAdherent = 0;
    int nbEmpruntsActuels = 0;
    
    // Saisie des informations
    printf("Entrez l'identifiant de l'adherent : ");
    scanf("%d", &idAdherent);
    
    printf("Entrez le nombre d'emprunts actuels : ");
    scanf("%d", &nbEmpruntsActuels);
    
    // Affichage du récapitulatif
    printf("\n--- FICHE ADHERENT ---\n");
    printf("ID Adherent : %d\n", idAdherent);
    printf("Emprunts en cours : %d / %d\n", nbEmpruntsActuels, MAX_LIVRES_AUTORISES);
    
    return 0;
}