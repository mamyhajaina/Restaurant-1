 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Serveur;
public class ServiceServeur {
      public static ArrayList<Serveur> getAllServeur()throws Exception{
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Serveur> listServeur= new ArrayList<Serveur>(); 
        Statement stmt = con.createStatement(); 
        ResultSet res = stmt.executeQuery("select * from  serveur");      
        while(res.next())
        {
            Serveur s= new Serveur();
            s.setId_serveur(res.getInt("id_serveur"));
            s.setNom_serveur(res.getString("nom_serveur"));
            listServeur.add(s);
        }
        con.close();
        return listServeur;
    }
}
