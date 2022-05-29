 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;  

public class ServiceUtilisateur {
     
      
        public static void insertUtilisateur(int id_type_user,String login,String password) throws Exception
    {   
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
  String req="insert into utilisateur values(0,"+id_type_user+",'"+login+"','"+password+"')";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close(); 
    }
}
