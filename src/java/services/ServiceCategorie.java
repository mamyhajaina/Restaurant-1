 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Categorie;

public class ServiceCategorie {
     public static ArrayList<Categorie> getAllCategorie()  throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Categorie> listplat= new ArrayList<Categorie>(); 
        Statement stmt = con.createStatement(); 
        ResultSet res = stmt.executeQuery("select * from  categorie");      
        while(res.next())
        {
            Categorie p= new Categorie();
            p.setId_categorie(res.getInt("id_categorie"));
            p.setNom_categorie(res.getString("nom_categorie"));  
            listplat.add(p);
        }
        con.close();
        return listplat;
    }
}
