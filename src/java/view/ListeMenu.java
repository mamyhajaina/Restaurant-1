 
package view;
 
public class ListeMenu {
    int prix_de_revient;
    int id_plat;
    String nom_plat;
    String nom_categorie;
    int id_categorie;

    public ListeMenu(int prix_de_revient, int id_plat, String nom_plat, String nom_categorie, int id_categorie) {
        this.prix_de_revient = prix_de_revient;
        this.id_plat = id_plat;
        this.nom_plat = nom_plat;
        this.nom_categorie = nom_categorie;
        this.id_categorie = id_categorie;
    }

    public ListeMenu() {
    }

    public int getPrix_de_revient() {
        return prix_de_revient;
    }

    public void setPrix_de_revient(int prix_de_revient) {
        this.prix_de_revient = prix_de_revient;
    }

    public int getId_plat() {
        return id_plat;
    }

    public void setId_plat(int id_plat) {
        this.id_plat = id_plat;
    }

    public String getNom_plat() {
        return nom_plat;
    }

    public void setNom_plat(String nom_plat) {
        this.nom_plat = nom_plat;
    }

    public String getNom_categorie() {
        return nom_categorie;
    }

    public void setNom_categorie(String nom_categorie) {
        this.nom_categorie = nom_categorie;
    }

    public int getId_categorie() {
        return id_categorie;
    }

    public void setId_categorie(int id_categorie) {
        this.id_categorie = id_categorie;
    }
    
}
