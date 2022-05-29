 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Type_user; 
public class ServiceTypeUser {
      public static ArrayList<Type_user> getAllTypeUser() throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Type_user> list= new ArrayList<Type_user>(); 
        Statement stmt = con.createStatement(); 
        ResultSet res = stmt.executeQuery("select * from type_user");      
        while(res.next())
        {
            Type_user u= new Type_user();
            u.setId_type_user(res.getInt("id_type_user"));
            u.setNom_type_user(res.getString("nom_type_user"));
            list.add(u);
        }
        con.close();
        return list;
    }
}
