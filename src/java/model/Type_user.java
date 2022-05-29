 
package model;
 
public class Type_user {
    int id_type_user;
    String nom_type_user;

    public Type_user() {
    }

    public Type_user(int id_type_user, String nom_type_user) {
        this.id_type_user = id_type_user;
        this.nom_type_user = nom_type_user;
    }

    public int getId_type_user() {
        return id_type_user;
    }

    public void setId_type_user(int id_type_user) {
        this.id_type_user = id_type_user;
    }

    public String getNom_type_user() {
        return nom_type_user;
    }

    public void setNom_type_user(String nom_type_user) {
        this.nom_type_user = nom_type_user;
    }
    
}
