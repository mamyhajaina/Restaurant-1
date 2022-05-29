 
package model;
 
public class Utilisateur {
    int  id_utilisateur ;
    Type_user type_user  ;
    String login_user ;
    String  password;

    public Utilisateur(int id_utilisateur, Type_user type_user, String login_user, String password) {
        this.id_utilisateur = id_utilisateur;
        this.type_user = type_user;
        this.login_user = login_user;
        this.password = password;
    }

    public Utilisateur() {
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public Type_user getType_user() {
        return type_user;
    }

    public void setType_user(Type_user type_user) {
        this.type_user = type_user;
    }

    public String getLogin_user() {
        return login_user;
    }

    public void setLogin_user(String login_user) {
        this.login_user = login_user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
