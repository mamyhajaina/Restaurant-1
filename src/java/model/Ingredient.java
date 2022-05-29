 
package model;
 
public class Ingredient {
    int id_ingredient;
    String nom_ingredient;
    int prix;

    public Ingredient(int id_ingredient, String nom_ingredient, int prix) {
        this.id_ingredient = id_ingredient;
        this.nom_ingredient = nom_ingredient;
        this.prix = prix;
    }

    public Ingredient() {
    }

    public int getId_ingredient() {
        return id_ingredient;
    }

    public void setId_ingredient(int id_ingredient) {
        this.id_ingredient = id_ingredient;
    }

    public String getNom_ingredient() {
        return nom_ingredient;
    }

    public void setNom_ingredient(String nom_ingredient) {
        this.nom_ingredient = nom_ingredient;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }
    
}
