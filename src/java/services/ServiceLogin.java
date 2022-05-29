 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Login;
import model.Serveur;
import view.IngredientParPlat;

public class ServiceLogin {
    public int TestLogin(Login l)
    {
        int retour =0;
        if(l.getLogin().compareTo("Jean")==0)
        {
            retour=2;
        }
        else if(l.getLogin().compareTo("Rajao")==0)
        {
            retour=2;
        }
        else{
            retour=1;
        }
        return retour;
    }
    public static Serveur getServeurObject(String serveurName) throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
         Serveur s= new Serveur();
        Statement stmt = con.createStatement();  
        String requete="select * from serveur where nom_serveur='"+serveurName+"'"; 
        ResultSet res = stmt.executeQuery(requete);      
        while(res.next())
        {
            s.setId_serveur(res.getInt("id_serveur"));
        }
        return s;
    }
}
