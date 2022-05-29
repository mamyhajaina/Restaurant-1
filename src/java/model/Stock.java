 
package model;
 
public class Stock {
    int id_stock;
    int qte_stock;
    Ingredient i;
    String date_entree;
    String nom_ingredient;
    int prix;

    public Stock(int id_stock, int qte_stock, Ingredient i, String date_entree, String nom_ingredient, int prix) {
        this.id_stock = id_stock;
        this.qte_stock = qte_stock;
        this.i = i;
        this.date_entree = date_entree;
        this.nom_ingredient = nom_ingredient;
        this.prix = prix;
    } 

    public Stock() {
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

    public int getId_stock() {
        return id_stock;
    }

    public void setId_stock(int id_stock) {
        this.id_stock = id_stock;
    }

    public int getQte_stock() {
        return qte_stock;
    }

    public void setQte_stock(int qte_stock) {
        this.qte_stock = qte_stock;
    }

    public Ingredient getI() {
        return i;
    }

    public void setI(Ingredient i) {
        this.i = i;
    }

    public String getDate_entree() {
        return date_entree;
    }

    public void setDate_entree(String date_entree) {
        this.date_entree = date_entree;
    }
    
}
