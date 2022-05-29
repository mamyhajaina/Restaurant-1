 
package model;
 
public class Serveur {
    int id_serveur;
    String nom_serveur;

    public Serveur(int id_serveur, String nom_serveur) {
        this.id_serveur = id_serveur;
        this.nom_serveur = nom_serveur;
    }

    public Serveur() {
    }

    public int getId_serveur() {
        return id_serveur;
    }

    public void setId_serveur(int id_serveur) {
        this.id_serveur = id_serveur;
    }

    public String getNom_serveur() {
        return nom_serveur;
    }

    public void setNom_serveur(String nom_serveur) {
        this.nom_serveur = nom_serveur;
    }
    
}
