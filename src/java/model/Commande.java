 
package model;
 
public class Commande {
    int id_commande;
    String date_commande; 
    int table;
    int id_plat;
    String nom_plat;
    int prix_de_revient;
    String nom_categorie;
    int id_categorie;
    int id_serveur;
    String nom_serveur; 

    public Commande(int id_commande, String date_commande, int table, int id_plat, String nom_plat, int prix_de_revient, String nom_categorie, int id_categorie, int id_serveur, String nom_serveur) {
        this.id_commande = id_commande;
        this.date_commande = date_commande;
        this.table = table;
        this.id_plat = id_plat;
        this.nom_plat = nom_plat;
        this.prix_de_revient = prix_de_revient;
        this.nom_categorie = nom_categorie;
        this.id_categorie = id_categorie;
        this.id_serveur = id_serveur;
        this.nom_serveur = nom_serveur;
         
    }

    public int getId_commande() {
        return id_commande;
    }

    public void setId_commande(int id_commande) {
        this.id_commande = id_commande;
    }

    public int getTable() {
        return table;
    }

    public void setTable(int table) {
        this.table = table;
    }

    public int getId_plat() {
        return id_plat;
    }

    public void setId_plat(int id_plat) {
        this.id_plat = id_plat;
    }

    public int getPrix_de_revient() {
        return prix_de_revient;
    }

    public void setPrix_de_revient(int prix_de_revient) {
        this.prix_de_revient = prix_de_revient;
    }

    public int getId_categorie() {
        return id_categorie;
    }

    public void setId_categorie(int id_categorie) {
        this.id_categorie = id_categorie;
    }

    public int getId_serveur() {
        return id_serveur;
    }

    public void setId_serveur(int id_serveur) {
        this.id_serveur = id_serveur;
    }

    

    public Commande() {
    }

    public String getDate_commande() {
        return date_commande;
    }

    public void setDate_commande(String date_commande) {
        this.date_commande = date_commande;
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

    public String getNom_serveur() {
        return nom_serveur;
    }

    public void setNom_serveur(String nom_serveur) {
        this.nom_serveur = nom_serveur;
    }

}
