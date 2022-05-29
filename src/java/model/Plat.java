 
package model;
 
public class Plat {
    int id_plat;
    String nom_plat;
    Categorie c;

    public Plat(int id_plat, String nom_plat, Categorie c) {
        this.id_plat = id_plat;
        this.nom_plat = nom_plat;
        this.c = c;
    }

    public Plat() {
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

    public Categorie getC() {
        return c;
    }

    public void setC(Categorie c) {
        this.c = c;
    }
    
}
