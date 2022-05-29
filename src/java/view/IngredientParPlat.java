 
package view;
 
public class IngredientParPlat {
      String nom_plat;
    int id_plat;
    String nom_categorie;
    int id_categorie;
    String nom_ingredient;
    int qte_ingredient;

    public IngredientParPlat(String nom_plat, int id_plat, String nom_categorie, int id_categorie, String nom_ingredient, int qte_ingredient) {
        this.nom_plat = nom_plat;
        this.id_plat = id_plat;
        this.nom_categorie = nom_categorie;
        this.id_categorie = id_categorie;
        this.nom_ingredient = nom_ingredient;
        this.qte_ingredient = qte_ingredient;
    }

    public IngredientParPlat() {
    }

    public String getNom_plat() {
        return nom_plat;
    }

    public void setNom_plat(String nom_plat) {
        this.nom_plat = nom_plat;
    }

    public int getId_plat() {
        return id_plat;
    }

    public void setId_plat(int id_plat) {
        this.id_plat = id_plat;
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

    public String getNom_ingredient() {
        return nom_ingredient;
    }

    public void setNom_ingredient(String nom_ingredient) {
        this.nom_ingredient = nom_ingredient;
    }

    public int getQte_ingredient() {
        return qte_ingredient;
    }

    public void setQte_ingredient(int qte_ingredient) {
        this.qte_ingredient = qte_ingredient;
    }
}
